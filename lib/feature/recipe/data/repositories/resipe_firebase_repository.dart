import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'recipe_repository.dart';

class RecipeFirebaseRepository implements RecipeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  Future<List<Recipe>> getRecipes() async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection('recipes').get();
      return querySnapshot.docs
          .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error loading recipes: $e');
      throw Exception('Error loading recipes: $e');
    }
  }

  @override
  Future<List<Recipe>> getRecipesByCookingTime(String time) async {
    try {
      if (time == '0') {
        final snapshot = await _firestore.collection('recipes').get();
        return snapshot.docs
            .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
      } else if (time == '121') {
        final snapshot = await _firestore.collection('recipes').get();
        final recipes = snapshot.docs
            .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
        return recipes
            .where((recipe) => int.parse(recipe.cookingTime) > 120)
            .toList();
      } else {
        final snapshot = await _firestore
            .collection('recipes')
            .where('cookingTime', isEqualTo: time)
            .get();
        return snapshot.docs
            .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error getting recipes by cooking time: $e');
      throw Exception('Error getting recipes by cooking time: $e');
    }
  }

  // @override
  // Future<List<Recipe>> getRecipesByIngredients(List<String> ingredients) async {
  //   // This assumes you want to get recipes that contain all the ingredients in the list
  //   final snapshot = await _firestore.collection('recipes').get();
  //   List<Recipe> recipes = [];
  //   for (var doc in snapshot.docs) {
  //     var data = doc.data();
  //     String ingredientDocId = data['ingredients'];
  //     DocumentSnapshot ingredientDoc = await _firestore
  //         .collection('ingredientWithQuantity')
  //         .doc(ingredientDocId)
  //         .get();
  //     var ingredientData = ingredientDoc.data() as Map<String, dynamic>;

  //     List<IngredientWithQuantity> ingredients = (ingredientData['ingredients']
  //             as List<dynamic>)
  //         .map(
  //             (e) => IngredientWithQuantity.fromJson(e as Map<String, dynamic>))
  //         .toList();

  //     bool hasAllIngredients = ingredients.every((id) => ingredients
  //         .any((ingredient) => ingredient.ingredient.ingredientId == id));

  //     if (hasAllIngredients) {
  //       recipes.add(Recipe.fromJson(data));
  //     }
  //   }
  //   return recipes;
  // }

  @override
  Future<Recipe> getRecipeById(String recipeId) async {
    try {
      print("Запрос к базе данных рецепта с recipeId: $recipeId");
      DocumentSnapshot doc =
          await _firestore.collection('recipes').doc(recipeId).get();
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

  @override
  Future<List<Recipe>> getRecipesByCategory(String category) async {
    try {
      QuerySnapshot snapshot;
      if (category.isEmpty) {
        snapshot = await _firestore.collection('recipes').get();
      } else {
        snapshot = await _firestore
            .collection('recipes')
            .where('category', isEqualTo: category)
            .get();
      }
      return snapshot.docs
          .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error getting recipes by category: $e');
      throw Exception('Error getting recipes by category: $e');
    }
  }

  @override
  Future<List<Ingredient>> searchIngredients(String query) async {
    try {
      final snapshot = await _firestore.collection('ingredients').get();
      final ingredients = snapshot.docs
          .map((doc) => Ingredient.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      final filteredIngredients = ingredients.where((ingredient) {
        return ingredient.title.toLowerCase().contains(query.toLowerCase());
      }).toList();

      if (kDebugMode) {
        print(
            "Searched Ingredients from Firestore for query '$query': $filteredIngredients");
      }
      return filteredIngredients;
    } catch (e) {
      if (kDebugMode) {
        print('Error searching ingredients: $e');
      }
      throw Exception('Error searching ingredients: $e');
    }
  }

  @override
  Future<List<Ingredient>> getIngredients(String title) async {
    try {
      Query query = _firestore.collection('ingredients');
      if (title.isNotEmpty) {
        query = query.where('title', isEqualTo: title);
      }
      final snapshot = await query.get();

      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>?;
        if (data == null) {
          throw Exception('Document data is null');
        }

        final ingredientId = data['ingredientId'] as String? ?? '';
        final title = data['title'] as String? ?? '';
        if (ingredientId.isEmpty || title.isEmpty) {
          throw Exception('Missing required fields in document');
        }
        return Ingredient.fromJson(
            {'ingredientId': ingredientId, 'title': title});
      }).toList();
    } catch (e) {
      if (kDebugMode) {
        print('Error getting ingredients: $e');
      }
      throw Exception('Error getting ingredients: $e');
    }
  }

  @override
  Future<String> addIngredient(Ingredient ingredient) async {
    try {
      if (kDebugMode) {
        print('Attempting to add ingredient: ${ingredient.toJson()}');
      }
      if (await isIngredientTitleUnique(ingredient.title)) {
        if (ingredient.ingredientId.isEmpty) {
          DocumentReference docRef = await _firestore
              .collection('ingredients')
              .add(ingredient.toJson());
          String ingredientId = docRef.id;
          ingredient = ingredient.copyWith(ingredientId: ingredientId);
          await docRef.update({'ingredientId': ingredientId});
          if (kDebugMode) {
            print('Ingredient added with ID: $ingredientId');
          }
          return ingredientId;
        } else {
          await _firestore
              .collection('ingredients')
              .doc(ingredient.ingredientId)
              .set(ingredient.toJson());
          if (kDebugMode) {
            print('Ingredient updated with ID: ${ingredient.ingredientId}');
          }
          return ingredient.ingredientId;
        }
      } else {
        throw Exception('Ингредиент с таким названием уже существует');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error adding ingredient: $e');
      }
      throw Exception('Error adding ingredient: $e');
    }
  }

  Future<bool> isIngredientTitleUnique(String title) async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('ingredients')
          .where('title', isEqualTo: title)
          .get();
      return querySnapshot.docs.isEmpty;
    } catch (e) {
      if (kDebugMode) {
        print('Error checking ingredient title uniqueness: $e');
      }
      throw Exception('Error checking ingredient title uniqueness: $e');
    }
  }

  @override
  Future<List<Measurement>> getMeasurements(String title) async {
    Query query = _firestore.collection('measurements');
    if (title.isNotEmpty) {
      query = query.where('title', isEqualTo: title);
    }
    final snapshot = await query.get();

    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>?;
      if (data == null) {
        throw Exception('Document data is null');
      }
      // Логирование данных для отладки
      if (kDebugMode) {
        print('Document data: $data');
      }
      final measurementId = data['measurementId'] as String? ?? '';
      final title = data['title'] as String? ?? '';
      if (measurementId.isEmpty || title.isEmpty) {
        throw Exception('Missing required fields in document');
      }
      return Measurement(measurementId: measurementId, title: title);
    }).toList();
  }

  @override
  Future<void> addRecipe(
    Recipe recipe,
    List<IngredientWithQuantity> ingredients,
    List<StepRecipe> steps,
    File? image,
  ) async {
    try {
      DocumentReference recipeDocRef = _firestore.collection('recipes').doc();
      String recipeId = recipeDocRef.id;
      if (kDebugMode) {
        print('Создан документ рецепта с ID: $recipeId');
      }

      recipe = recipe.copyWith(recipeId: recipeId);

      // Загрузка изображения рецепта в Firebase Storage и получение URL
      String? imageUrl;
      if (image != null) {
        imageUrl = await _uploadImageToStorage(image, recipeId);
        if (kDebugMode) {
          print('Изображение загружено с URL: $imageUrl');
        }
      }

      List<Map<String, dynamic>> ingredientData = [];
      for (var ingredientWithQuantity in ingredients) {
        ingredientData.add({
          'ingredientWithQuantityId':
              ingredientWithQuantity.ingredientWithQuantityId,
          'ingredientName': ingredientWithQuantity.ingredient.title,
          'quantity': ingredientWithQuantity.quantity,
          'measurement': ingredientWithQuantity.measurement.title,
        });
      }

      List<Map<String, dynamic>> stepData = [];
      for (var step in steps) {
        String stepImageUrl = '';
        if (step.image.isNotEmpty) {
          stepImageUrl =
              await _uploadImageToStorage(File(step.image), recipeId);
          if (kDebugMode) {
            print('Изображение шага загружено с URL: $stepImageUrl');
          }
        }
        stepData.add({
          'stepId': step.stepId,
          'description': step.description,
          'image': stepImageUrl,
          'stepNumber': step.stepNumber,
        });
      }

      await recipeDocRef.set({
        'recipeId': recipeId,
        'userId': recipe.userId,
        'imageUrl': imageUrl ?? '',
        'title': recipe.title,
        'description': recipe.description,
        'cookingTime': recipe.cookingTime,
        'portions': recipe.portions,
        'category': recipe.category,
        'ingredients': ingredientData,
        'steps': stepData,
        'rating': recipe.rating.toJson(),
        'comments': [],
      });

      if (kDebugMode) {
        print('Рецепт успешно добавлен в Firestore');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Ошибка при добавлении рецепта: ${e.toString()}');
      }
      throw Exception("Error adding recipe: ${e.toString()}");
    }
  }

  Future<String> _uploadImageToStorage(File image, String recipeId) async {
    try {
      String filePath =
          'recipe_images/$recipeId/${DateTime.now().millisecondsSinceEpoch}.jpg';
      TaskSnapshot uploadTask =
          await FirebaseStorage.instance.ref().child(filePath).putFile(image);
      String downloadUrl = await uploadTask.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      if (kDebugMode) {
        print('Ошибка при загрузке изображения: ${e.toString()}');
      }
      throw Exception('Error uploading image: ${e.toString()}');
    }
  }

  @override
  Future<void> updateRecipe(Recipe recipe) async {
    await _firestore
        .collection('recipes')
        .doc(recipe.recipeId)
        .update(recipe.toJson());
  }

  @override
  Future<void> deleteRecipe(String recipeId) async {
    await _firestore.collection('recipes').doc(recipeId).delete();
  }

  @override
  Future<List<Recipe>> searchRecipes(String query) async {
    try {
      final snapshot = await _firestore
          .collection('recipes')
          .where('title', isGreaterThanOrEqualTo: query)
          .where('title', isLessThanOrEqualTo: '$query\uf8ff')
          .get();
      return snapshot.docs
          .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error searching recipes: $e');
      throw Exception('Error searching recipes: $e');
    }
  }

  @override
  Future<void> addComment(String recipeId, Comment comment) async {
    await _firestore.collection('recipes').doc(recipeId).update({
      'comments': FieldValue.arrayUnion([comment.toJson()])
    });
  }

  @override
  Future<void> addRating(String recipeId, Rating rating) async {
    await _firestore
        .collection('recipes')
        .doc(recipeId)
        .update({'rating': rating.toJson()});
  }

  @override
  Future<List<Comment>> getCommentsForRecipe(String recipeId) async {
    try {
      print('Загрузка комментариев для рецепта: $recipeId');
      final snapshot = await _firestore
          .collection('recipes')
          .doc(recipeId)
          .collection('comments')
          .get();
      print('Загружено ${snapshot.docs.length} комментариев.');
      return snapshot.docs.map((doc) => Comment.fromJson(doc.data())).toList();
    } catch (e) {
      print('Ошибка при загрузке комментариев: $e');
      throw Exception('Ошибка при загрузке комментариев: $e');
    }
  }

  @override
  Future<void> deleteComment(String commentId) async {
    await _firestore
        .collectionGroup('comments')
        .where('commentId', isEqualTo: commentId)
        .get()
        .then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
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
        }
      } else {
        transaction.set(docRef, {
          'recipeIds': {recipeId: true}
        });
      }
    });
  }

  @override
  Future<List<Recipe>> getFavoriteRecipesForUser(String userId) async {
    DocumentSnapshot snapshot =
        await _firestore.collection('users').doc(userId).get();
    if (snapshot.exists) {
      Map<String, bool> recipeIdsMap =
          Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
      List<String> recipeIds = recipeIdsMap.keys.toList();
      List<Recipe> recipes = [];
      for (String id in recipeIds) {
        recipes.add(await getRecipeById(id));
      }
      return recipes;
    } else {
      return [];
    }
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
        }
      }
    });
  }

  @override
  Future<List<Categories>> getCategories(String title) async {
    try {
      final snapshot = await _firestore.collection('categories').get();
      final categories = snapshot.docs.map((doc) {
        return Categories(
          categoryId: doc.id,
          title: doc['title'],
        );
      }).toList();

      // Выводим полученные категории в консоль
      print('Categories:');
      for (var category in categories) {
        print('ID: ${category.categoryId}, Title: ${category.title}');
      }

      return categories;
    } catch (e) {
      print('Error getting categories: $e');
      throw Exception('Error getting categories: $e');
    }
  }

  @override
  Future<List<RecipeCollection>> fetchRecipeCollections() async {
    try {
      QuerySnapshot snapshot =
          await _firestore.collection('recipeCollections').get();
      return snapshot.docs
          .map((doc) =>
              RecipeCollection.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Error fetching recipe collections: $e');
    }
  }
}
