import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

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
      if (kDebugMode) {
        print("Ошибка при получении текущего пользователя: $e");
      }
      return null;
    }
  }

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
      if (e.code == 'user-not-found') {
        throw Exception('Пользователь с таким email не найден.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Неправильный пароль.');
      } else {
        throw Exception('Ошибка при входе в систему: ${e.message}');
      }
    } catch (e) {
      throw Exception('Неизвестная ошибка при входе в систему: $e');
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
      if (kDebugMode) {
        print("Ошибка при регистрации: $e");
      }
      return null;
    }
  }

  @override
  Future<void> createUser(MyUser user) async {
    try {
      await _firestore.collection('users').doc(user.userId).set(user.toJson());
    } catch (e) {
      if (kDebugMode) {
        print("Ошибка при создании пользователя: $e");
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Future<void> addToFavorites(String userId, String recipeId) async {
    final currentUser = await getCurrentUser();
    if (currentUser == null) {
      throw Exception('Войдите, чтобы добавлять в избранное');
    }

    DocumentReference docRef = _firestore.collection('users').doc(userId);
    await _firestore.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(docRef);
      if (snapshot.exists) {
        Map<String, bool> recipeIds =
            Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
        if (!recipeIds.containsKey(recipeId)) {
          recipeIds[recipeId] = true;
          transaction.update(docRef, {'recipeIds': recipeIds});
          if (kDebugMode) {
            print('Рецепт добавлен в избранное: $recipeId');
          }
        }
      } else {
        transaction.set(docRef, {
          'recipeIds': {recipeId: true}
        });
        if (kDebugMode) {
          print('Рецепт добавлен в избранное (новый документ): $recipeId');
        }
      }
    });
  }

  @override
  Future<void> removeFromFavorites(String userId, String recipeId) async {
    final currentUser = await getCurrentUser();
    if (currentUser == null) {
      throw Exception('Войдите, чтобы удалять из избранного');
    }

    DocumentReference docRef = _firestore.collection('users').doc(userId);
    await _firestore.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(docRef);
      if (snapshot.exists) {
        Map<String, bool> recipeIds =
            Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
        if (recipeIds.containsKey(recipeId)) {
          recipeIds.remove(recipeId);
          transaction.update(docRef, {'recipeIds': recipeIds});
          if (kDebugMode) {
            print('Рецепт удален из избранного: $recipeId');
          }
        } else {
          if (kDebugMode) {
            print('Рецепт не найден в избранном: $recipeId');
          }
        }
      } else {
        if (kDebugMode) {
          print('Документ пользователя не найден: $userId');
        }
      }
    });
  }

  @override
  Future<List<Recipe>> getFavoriteRecipesForUser(String userId) async {
    try {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      if (!userDoc.exists) {
        throw Exception('User not found');
      }

      MyUser user = MyUser.fromJson(userDoc.data() as Map<String, dynamic>);
      List<String> recipeIds = user.recipeIds.keys.toList();

      if (kDebugMode) {
        print('Получены идентификаторы рецептов: $recipeIds');
      }

      List<Recipe> favoriteRecipes = [];
      for (String recipeId in recipeIds) {
        Recipe recipe = await getRecipeById(recipeId);
        favoriteRecipes.add(recipe);
      }

      if (kDebugMode) {
        print('Избранные рецепты: $favoriteRecipes');
      }

      return favoriteRecipes;
    } catch (e) {
      if (kDebugMode) {
        print('Ошибка при получении избранных рецептов: $e');
      }
      throw Exception("Ошибка при получении избранных рецептов: $e");
    }
  }

  @override
  Future<Recipe> getRecipeById(String recipeId) async {
    try {
      if (kDebugMode) {
        print("Запрос к базе данных рецепта с recipeId: $recipeId");
      }
      DocumentSnapshot doc =
          await _firestore.collection('recipes').doc(recipeId).get();
      if (!doc.exists) {
        throw Exception('Рецепт не найден');
      }
      if (kDebugMode) {
        print("Рецепт успешно получен из репозитория.");
      }
      return Recipe.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print("Ошибка при получении рецепта из репозитория: $e");
      }
      throw Exception("Ошибка при получении рецепта из репозитория: $e");
    }
  }

@override
Future<void> updateUserProfile(String userId, String name, String email) async {
  try {
    await _firestore.collection('users').doc(userId).update({
      if (name.isNotEmpty) 'name': name,
      if (email.isNotEmpty) 'email': email,
    });
  } catch (e) {
    if (kDebugMode) {
      print("Ошибка при обновлении профиля: $e");
    }
  }
}

@override
Future<void> updateUserPhoto(String userId, String photoURL) async {
  try {
    await _firestore.collection('users').doc(userId).update({
      'photoURL': photoURL,
    });
  } catch (e) {
    if (kDebugMode) {
      print("Ошибка при обновлении фото: $e");
    }
  }
}

}
