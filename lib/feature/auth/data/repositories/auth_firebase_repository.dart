import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebaseRepository implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<MyUser?> getCurrentUser() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        DocumentSnapshot snapshot =
            await _firestore.collection('users').doc(user.uid).get();
        if (snapshot.exists) {
          return MyUser.fromJson(snapshot.data()! as Map<String, dynamic>);
        }
      }
      return null;
    } catch (e) {
      print("Ошибка при получении текущего пользователя: $e");
      return null;
    }
  }

  // @override
  // Future<void> updateUser(MyUser user) async {
  //   try {
  //     await _firestore.collection('users').doc(user.userId).update(user.toJson());
  //   } catch (e) {
  //     print("Ошибка при обновлении пользователя: $e");
  //   }
  // }

  // @override
  // Future<void> deleteUser(String userId) async {
  //   try {
  //     await _firestore.collection('users').doc(userId).delete();
  //   } catch (e) {
  //     print("Ошибка при удалении пользователя: $e");
  //   }
  // }

  @override
  Future<MyUser?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return MyUser(
          userId: userCredential.user!.uid,
          email: email,
          name: 'user',
          recipeIds: {});
    } on FirebaseAuthException catch (e) {
      print("Ошибка при входе в систему: ${e.code} - ${e.message}");
      return null;
    } catch (e) {
      print("Неизвестная ошибка при входе в систему: $e");
      return null;
    }
  }

  @override
  Future<MyUser?> signUpWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('users')
          .where('email', isEqualTo: email)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        return null;
      }

      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      MyUser newUser = MyUser(
          userId: userCredential.user!.uid,
          email: email,
          name: name,
          recipeIds: {});
      await createUser(newUser);
      return newUser;
    } catch (e) {
      print("Ошибка при регистрации: $e");
      return null;
    }
  }

  @override
  Future<void> createUser(MyUser user) async {
    try {
      await _firestore.collection('users').doc(user.userId).set(user.toJson());
    } catch (e) {
      print("Ошибка при создании пользователя: $e");
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Future<void> addToFavorites(String userId, String recipeId) async {
    DocumentReference docRef = _firestore.collection('users').doc(userId);
    await _firestore.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(docRef);
      if (snapshot.exists) {
        Map<String, bool> recipeIds =
            Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
        if (!recipeIds.containsKey(recipeId)) {
          recipeIds[recipeId] = true;
          transaction.update(docRef, {'recipeIds': recipeIds});
          print('Рецепт добавлен в избранное: $recipeId');
        }
      } else {
        transaction.set(docRef, {
          'recipeIds': {recipeId: true}
        });
        print('Рецепт добавлен в избранное (новый документ): $recipeId');
      }
    });
  }

  @override
  Future<void> removeFromFavorites(String userId, String recipeId) async {
    DocumentReference docRef = _firestore.collection('users').doc(userId);
    await _firestore.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(docRef);
      if (snapshot.exists) {
        Map<String, bool> recipeIds =
            Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
        if (recipeIds.containsKey(recipeId)) {
          recipeIds.remove(recipeId);
          transaction.update(docRef, {'recipeIds': recipeIds});
          print('Рецепт удален из избранного: $recipeId');
        } else {
          print('Рецепт не найден в избранном: $recipeId');
        }
      } else {
        print('Документ пользователя не найден: $userId');
      }
    });
  }

  @override
Future<List<Recipe>> getFavoriteRecipesForUser(String userId) async {
  print('getFavoriteRecipesForUser: $userId');
  try {
    DocumentSnapshot snapshot = await _firestore.collection('users').doc(userId).get();
    if (snapshot.exists) {
      print('Snapshot exists: ${snapshot.data()}');
      Map<String, bool> recipeIdsMap = Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
      List<String> recipeIds = recipeIdsMap.keys.toList();
      List<Recipe> recipes = [];
      for (String id in recipeIds) {
        recipes.add(await getRecipeById(id));
      }
      print('Найдено рецептов: ${recipes.length}');
      return recipes;
    } else {
      print('Пользователь не найден');
      return [];
    }
  } catch (e) {
    print('Ошибка при получении данных из Firestore: $e');
    return [];
  }
}

@override
Future<Recipe> getRecipeById(String recipeId) async {
  try {
    print("Запрос к базе данных рецепта с recipeId: $recipeId");
    DocumentSnapshot doc = await _firestore.collection('recipes').doc(recipeId).get();
    if (!doc.exists) {
      throw Exception('Recipe not found');
    }
    print("Рецепт успешно получен из репозитория.");
    return Recipe.fromJson(doc.data() as Map<String, dynamic>);
  } catch (e) {
    print("Ошибка при получении рецепта из репозитория: $e");
    throw Exception("Ошибка при получении рецепта из репозитория: $e");
  }
}

}
