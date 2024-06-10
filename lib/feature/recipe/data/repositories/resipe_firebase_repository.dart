import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'recipe_repository.dart';

class RecipeFirebaseRepository implements RecipeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  Future<List<Recipe>> getRecipes() async {
    final snapshot = await _firestore.collection('recipes').get();
    return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
  }

  @override
  Future<Recipe> getRecipeById(String recipeId) async {
    final doc = await _firestore.collection('recipes').doc(recipeId).get();
    if (doc.exists) {
      return Recipe.fromJson(doc.data()!);
    } else {
      throw Exception('Recipe not found');
    }
  }

  @override
  Future<List<Recipe>> getRecipesByCategory(String category) async {
    final snapshot = await _firestore
        .collection('recipes')
        .where('category.title', isEqualTo: category)
        .get();
    return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
  }

  @override
  Future<List<Ingredient>> getIngredients(String title) async {
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
      // Логирование данных для отладки
      if (kDebugMode) {
        print('Document data: $data');
      }
      // Проверка наличия необходимых полей и их значений
      final ingredientId = data['ingredientId'] as String? ?? '';
      final title = data['title'] as String? ?? '';
      if (ingredientId.isEmpty || title.isEmpty) {
        throw Exception('Missing required fields in document');
      }
      return Ingredient.fromJson({
        'ingredientId': ingredientId,
        'title': title,
      });
    }).toList();
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
  Future<String> addIngredient(Ingredient ingredient) async {
    try {
      if (await isIngredientTitleUnique(ingredient.title)) {
        if (ingredient.ingredientId.isEmpty) {
          DocumentReference docRef = await _firestore
              .collection('ingredients')
              .add(ingredient.toJson());
          String ingredientId = docRef.id;
          ingredient = ingredient.copyWith(ingredientId: ingredientId);
          await docRef.update({'ingredientId': ingredientId});
          return ingredientId;
        } else {
          await _firestore
              .collection('ingredients')
              .doc(ingredient.ingredientId)
              .set(ingredient.toJson());
          return ingredient.ingredientId;
        }
      } else {
        throw 'Ингредиент с таким названием уже существует';
      }
    } catch (e) {
      throw e.toString();
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
      throw e.toString();
    }
  }

  @override
  Future<List<Ingredient>> searchIngredients(String query) async {
    final snapshot = await _firestore.collection('ingredients').get();
    final ingredients =
        snapshot.docs.map((doc) => Ingredient.fromJson(doc.data())).toList();

    final filteredIngredients = ingredients.where((ingredient) {
      return ingredient.title.toLowerCase().contains(query.toLowerCase());
    }).toList();

    if (kDebugMode) {
      print(
          "Searched Ingredients from Firestore for query '$query': $filteredIngredients");
    }
    return filteredIngredients;
  }

@override
Future<void> addRecipe(
    Recipe recipe,
    List<IngredientWithQuantity> ingredients,
    List<StepRecipe> steps,
    File? image) async {
  try {
    // Создание документа рецепта
    DocumentReference recipeDocRef = _firestore.collection('recipes').doc();
    String recipeId = recipeDocRef.id;
    if (kDebugMode) {
      print('Создан документ рецепта с ID: $recipeId');
    }

    // Обновление recipeId в модели рецепта
    recipe = recipe.copyWith(recipeId: recipeId);

    // Создание документа ингредиентов с количествами
    DocumentReference ingredientWithQuantityDocRef =
        _firestore.collection('ingredientWithQuantity').doc();
    String ingredientDocId = ingredientWithQuantityDocRef.id;
    if (kDebugMode) {
      print('Создан документ ингредиентов с ID: $ingredientDocId');
    }

    Map<String, Map<String, dynamic>> ingredientData = {};
    for (var ingredient in ingredients) {
      ingredientData[ingredient.ingredient.ingredientId] = {
        'title': ingredient.ingredient.title,
        'quantity': ingredient.quantity,
        //'measurementId': ingredient.measurement.measurementId,
        'measurementTitle': ingredient.measurement.title,
      };
    }
    await ingredientWithQuantityDocRef
        .set({'recipeId': recipeId, 'ingredients': ingredientData});
    if (kDebugMode) {
      print('Ингредиенты добавлены');
    }

    // Создание документа шагов рецепта
    DocumentReference stepRecipeDocRef =
        _firestore.collection('stepRecipe').doc();
    String stepDocId = stepRecipeDocRef.id;
    if (kDebugMode) {
      print('Создан документ шагов рецепта с ID: $stepDocId');
    }

    Map<String, Map<String, dynamic>> stepData = {};
    for (var step in steps) {
      // Загрузка изображения для каждого шага в Firebase Storage и получение URL
      String? stepImageUrl;
      if (step.image.isNotEmpty) {
        stepImageUrl = await _uploadImageToStorage(
            File(step.image), recipeId); // Преобразование в File
        if (kDebugMode) {
          print(
              'Изображение шага ${step.stepNumber} загружено с URL: $stepImageUrl');
        }
      }

      stepData[step.stepId] = {
        'description': step.description,
        'image': stepImageUrl ?? '',
        'stepNumber': step.stepNumber,
      };
    }
    await stepRecipeDocRef.set({'recipeId': recipeId, 'steps': stepData});
    if (kDebugMode) {
      print('Шаги добавлены');
    }

    // Загрузка изображения рецепта в Firebase Storage и получение URL
    String? imageUrl;
    if (image != null) {
      try {
        imageUrl = await _uploadImageToStorage(image, recipeId);
        if (kDebugMode) {
          print('Изображение загружено с URL: $imageUrl');
        }
      } catch (e) {
        if (kDebugMode) {
          print('Ошибка при загрузке изображения: ${e.toString()}');
        }
        throw Exception('Error uploading image: ${e.toString()}');
      }
    }

    // Добавление основного документа рецепта с ссылками на ингредиенты и шаги
    await recipeDocRef.set({
      'recipeId': recipeId,
      'userId': recipe.userId,
      'imageUrl': imageUrl ?? '',
      'title': recipe.title,
      'description': recipe.description,
      'cookingTime': recipe.cookingTime,
      'portions': recipe.portions,
      'categories': recipe.categories,
      'ingredients': ingredientDocId,
      'steps': stepDocId,
      'rating': recipe.rating.toJson(),
      'comments': [],
    });
    if (kDebugMode) {
      print('Рецепт добавлен в Firestore');
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
    final snapshot = await _firestore
        .collection('recipes')
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: '$query\uf8ff')
        .get();
    return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
  }

  @override
  Future<void> addComment(String recipeId, Comment comment) async {
    await _firestore
        .collection('recipes')
        .doc(recipeId)
        .collection('comments')
        .add(comment.toJson());
  }

  @override
  Future<List<Comment>> getCommentsForRecipe(String recipeId) async {
    final snapshot = await _firestore
        .collection('recipes')
        .doc(recipeId)
        .collection('comments')
        .get();
    return snapshot.docs.map((doc) => Comment.fromJson(doc.data())).toList();
  }

  @override
  Future<void> deleteComment(String commentId) async {
    await _firestore
        .collectionGroup('comments')
        .where('id', isEqualTo: commentId)
        .get()
        .then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
  }

  @override
  Future<void> addToFavorites(String userId, String recipeId) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .doc(recipeId)
        .set({});
  }

  @override
  Future<List<Recipe>> getFavoriteRecipesForUser(String userId) async {
    final snapshot = await _firestore
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .get();
    List<String> recipeIds = snapshot.docs.map((doc) => doc.id).toList();
    List<Recipe> recipes = [];
    for (String id in recipeIds) {
      recipes.add(await getRecipeById(id));
    }
    return recipes;
  }

  @override
  Future<void> removeFromFavorites(String userId, String recipeId) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .doc(recipeId)
        .delete();
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
      if (kDebugMode) {
        print('Categories:');
      }
      for (var category in categories) {
        if (kDebugMode) {
          print('ID: ${category.categoryId}, Title: ${category.title}');
        }
      }

      return categories;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting categories: $e');
      }
      return [];
    }
  }
}
