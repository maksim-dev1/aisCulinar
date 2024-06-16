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
      print('Загрузка рецептов...');
      QuerySnapshot querySnapshot =
          await _firestore.collection('recipes').get();
      print('Загружено ${querySnapshot.docs.length} рецептов.');
      List<Recipe> recipes = [];

      for (var doc in querySnapshot.docs) {
        print('Обрабатывается рецепт: ${doc.id}');
        var data = doc.data() as Map<String, dynamic>;

        // Вывод данных для отладки
        print('Данные из Firestore: $data');

        // Извлечение ингредиентов
        List<Map<String, dynamic>> ingredients = [];
        if (data.containsKey('ingredients')) {
          var ingredientsData = data['ingredients'] as List<dynamic>;
          ingredients = ingredientsData.map((ingredient) {
            return {
              'ingredientName': ingredient['ingredientName'] ?? '',
              'measurement': ingredient['measurement'] ?? '',
              'quantity': ingredient['quantity'] ?? '',
            };
          }).toList();
        }

        // Извлечение шагов
        List<Map<String, dynamic>> steps = [];
        if (data.containsKey('steps')) {
          var stepsData = data['steps'] as List<dynamic>;
          steps = stepsData.map((step) {
            return {
              'description': step['description'] ?? '',
              'image': step['image'] ?? '',
              'stepNumber': step['stepNumber'] ?? 0,
            };
          }).toList();
        }

        // Извлечение комментариев
        List<Comment> comments = (data['comments'] as List<dynamic>?)
                ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [];

        // Извлечение рейтинга
        Rating rating = data['rating'] != null
            ? Rating.fromJson(data['rating'] as Map<String, dynamic>)
            : const Rating(
                ratingId: '',
                userId: '',
                userName: '',
                overallRating: 0.0,
                totalRating: 0,
              );

        Recipe recipe = Recipe(
          recipeId: doc.id,
          userId: data['userId'] ?? '',
          imageUrl: data['imageUrl'] ?? '',
          title: data['title'] ?? 'Без названия',
          description: data['description'] ?? '',
          cookingTime: data['cookingTime'] ?? '',
          portions: data['portions'] ?? 0,
          category: data['category'] ?? '',
          ingredients: ingredients,
          steps: steps,
          rating: rating,
          comments: comments,
        );

        recipes.add(recipe);
        print('Рецепт обработан: ${doc.id}');
      }

      print('Все рецепты обработаны.');
      return recipes;
    } catch (e) {
      print('Ошибка при загрузке рецептов: $e');
      throw Exception('Ошибка при загрузке рецептов: $e');
    }
  }

  @override
  Future<List<Recipe>> getRecipesByCookingTime(String time) async {
    try {
      print('Filtering recipes by cooking time: $time');
      if (time == '0') {
        final snapshot = await _firestore.collection('recipes').get();
        return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
      } else if (time == '121') {
        final snapshot = await _firestore.collection('recipes').get();
        final recipes =
            snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
        print('Total recipes: ${recipes.length}');
        return recipes.where((recipe) {
          final totalMinutes = int.parse(recipe.cookingTime);
          print('Recipe time: $totalMinutes');
          return totalMinutes > 120;
        }).toList();
      } else {
        final snapshot = await _firestore
            .collection('recipes')
            .where('cookingTime', isEqualTo: time)
            .get();
        return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error getting recipes by cooking time: $e');
      }
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
      print('Загрузка рецепта по ID: $recipeId');
      DocumentSnapshot doc =
          await _firestore.collection('recipes').doc(recipeId).get();
      if (!doc.exists) {
        print('Рецепт не найден: $recipeId');
        throw Exception('Рецепт не найден');
      }

      var data = doc.data() as Map<String, dynamic>?;

      if (data == null) {
        print('Данные для рецепта не найдены: $recipeId');
        throw Exception('Данные для рецепта не найдены.');
      }

      // Извлечение ингредиентов
      List<Map<String, dynamic>> ingredients = [];
      if (data.containsKey('ingredients')) {
        var ingredientsData = data['ingredients'] as List<dynamic>;
        ingredients = ingredientsData.map((ingredient) {
          return {
            'ingredientName': ingredient['ingredientName'] ?? '',
            'measurement': ingredient['measurement'] ?? '',
            'quantity': ingredient['quantity'] ?? '',
          };
        }).toList();
      }

      // Извлечение шагов
      List<Map<String, dynamic>> steps = [];
      if (data.containsKey('steps')) {
        var stepsData = data['steps'] as List<dynamic>;
        steps = stepsData.map((step) {
          return {
            'description': step['description'] ?? '',
            'image': step['image'] ?? '',
            'stepNumber': step['stepNumber'] ?? 0,
          };
        }).toList();
      }

      List<Comment> comments = (data['comments'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [];

      Rating rating = data['rating'] != null
          ? Rating.fromJson(data['rating'] as Map<String, dynamic>)
          : const Rating(
              ratingId: '',
              userId: '',
              overallRating: 0.0,
              totalRating: 0,
              userName: '');

      Recipe recipe = Recipe(
        recipeId: doc.id,
        userId: data['userId'] ?? '',
        imageUrl: data['imageUrl'] ?? '',
        title: data['title'] ?? 'Без названия',
        description: data['description'] ?? '',
        cookingTime: data['cookingTime'] ?? '',
        portions: data['portions'] ?? 0,
        category: data['category'] ?? '',
        ingredients: ingredients,
        steps: steps,
        rating: rating,
        comments: comments,
      );

      print('Рецепт обработан: $recipeId');
      return recipe;
    } catch (e) {
      print('Ошибка при получении рецепта: $e');
      throw Exception('Ошибка при получении рецепта: $e');
    }
  }

  @override
  Future<List<Recipe>> getRecipesByCategory(String category) async {
    try {
      final snapshot = await _firestore
          .collection('recipes')
          .where('categories', isEqualTo: category)
          .get();
      return snapshot.docs
          .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      if (kDebugMode) {
        print('Error getting recipes by category: $e');
      }
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
      // Создание документа рецепта
      DocumentReference recipeDocRef = _firestore.collection('recipes').doc();
      String recipeId = recipeDocRef.id;
      if (kDebugMode) {
        print('Создан документ рецепта с ID: $recipeId');
      }

      // Обновление recipeId в модели рецепта
      recipe = recipe.copyWith(recipeId: recipeId);

      // Загрузка изображения рецепта в Firebase Storage и получение URL
      String? imageUrl;
      if (image != null) {
        imageUrl = await _uploadImageToStorage(image, recipeId);
        if (kDebugMode) {
          print('Изображение загружено с URL: $imageUrl');
        }
      }

// Подготовка данных для ингредиентов внутри рецепта
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

// Подготовка данных для шагов внутри рецепта
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

      // Сохранение данных рецепта в Firestore
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
  Future<void> addRating(String recipeId, Rating rating) async {
    await _firestore
        .collection('recipes')
        .doc(recipeId)
        .collection('ratings')
        .add(rating.toJson());

    final recipeDoc = _firestore.collection('recipes').doc(recipeId);
    final recipeSnapshot = await recipeDoc.get();
    final recipeData = recipeSnapshot.data()!;
    final currentRating = recipeData['rating']['overallRating'] as double;
    final totalRatings = recipeData['rating']['totalRating'] as int;
    final newOverallRating =
        (currentRating * totalRatings + rating.overallRating) /
            (totalRatings + 1);
    final newTotalRatings = totalRatings + 1;
    await recipeDoc.update({
      'rating.overallRating': newOverallRating,
      'rating.totalRating': newTotalRatings,
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
}
