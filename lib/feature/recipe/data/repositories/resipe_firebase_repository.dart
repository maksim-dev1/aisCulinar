import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'recipe_repository.dart';

class RecipeFirebaseRepository implements RecipeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<Recipe>> getRecipes() async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection('recipes').get();
      return querySnapshot.docs
          .map((doc) => Recipe.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      if (kDebugMode) {
        print('Error loading recipes: $e');
      }
      throw Exception('Error loading recipes: $e');
    }
  }

  @override
  Future<List<Recipe>> getRecipesByCookingTime(String time) async {
    try {
      if (time == '0') {
        final snapshot = await _firestore.collection('recipes').get();
        return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
      } else if (time == '121') {
        final snapshot = await _firestore.collection('recipes').get();
        final recipes =
            snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
        return recipes
            .where((recipe) => int.parse(recipe.cookingTime) > 120)
            .toList();
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

  @override
  Future<Recipe> getRecipeById(String recipeId) async {
    try {
      if (kDebugMode) {
        print("Запрос к базе данных рецепта с recipeId: $recipeId");
      }
      DocumentSnapshot doc =
          await _firestore.collection('recipes').doc(recipeId).get();
      if (!doc.exists) {
        throw Exception('Recipe not found');
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
  Future<List<Recipe>> getUserRecipes(String userId) async {
    try {
      var querySnapshot = await _firestore
          .collection('recipes')
          .where('userId', isEqualTo: userId)
          .get();

      return querySnapshot.docs
          .map((doc) => Recipe.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to load user recipes: $e');
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
      return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
    } catch (e) {
      if (kDebugMode) {
        print('Error searching recipes: $e');
      }
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
      if (kDebugMode) {
        print('Загрузка комментариев для рецепта: $recipeId');
      }
      final snapshot = await _firestore
          .collection('recipes')
          .doc(recipeId)
          .collection('comments')
          .get();
      if (kDebugMode) {
        print('Загружено ${snapshot.docs.length} комментариев.');
      }
      return snapshot.docs.map((doc) => Comment.fromJson(doc.data())).toList();
    } catch (e) {
      if (kDebugMode) {
        print('Ошибка при загрузке комментариев: $e');
      }
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
  Future<List<Categories>> getCategories(String title) async {
    try {
      final snapshot = await _firestore.collection('categories').get();
      final categories = snapshot.docs.map((doc) {
        return Categories(
          categoryId: doc.id,
          title: doc['title'],
        );
      }).toList();

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
      throw Exception('Error getting categories: $e');
    }
  }

  @override
  Future<List<RecipeCollection>> getRecipeCollections() async {
    try {
      if (kDebugMode) {
        print('Repository: Fetching recipe collections from Firestore...');
      }

      QuerySnapshot querySnapshot =
          await _firestore.collection('RecipeCollection').get();
      if (kDebugMode) {
        print(
            "Repository: Number of documents found: ${querySnapshot.docs.length}");
      }

      if (querySnapshot.docs.isEmpty) {
        if (kDebugMode) {
          print("Repository: No recipe collections found.");
        }
        return [];
      }

      List<RecipeCollection> collections = querySnapshot.docs.map((doc) {
        if (kDebugMode) {
          print('Repository: Document data: ${doc.data()}');
        }

        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        if (!data.containsKey('recipeCollectionId') ||
            !data.containsKey('recipeCollectionImage') ||
            !data.containsKey('title') ||
            !data.containsKey('description') ||
            data['recipes'] is! List) {
          throw Exception("Repository: Invalid data structure.");
        }

        // Преобразуем массив `recipes` в List<String>
        List<String> recipes = List<String>.from(data['recipes']);

        return RecipeCollection(
          recipeCollectionId: data['recipeCollectionId'],
          recipes: recipes,
          recipeCollectionImage: data['recipeCollectionImage'],
          title: data['title'],
          description: data['description'],
        );
      }).toList();

      if (kDebugMode) {
        print('Repository: Successfully fetched recipe collections');
      }
      return collections;
    } catch (e) {
      if (kDebugMode) {
        print("Repository: Error fetching recipe collections - $e");
      }
      throw Exception("Failed to fetch recipe collections from Firestore.");
    }
  }

  @override
  Future<List<Recipe>> getRecipesByIds(List<String> recipeIds) async {
    try {
      if (kDebugMode) {
        print('Repository: Fetching recipes by IDs from Firestore...');
      }
      List<Recipe> recipes = [];
      for (String id in recipeIds) {
        DocumentSnapshot doc =
            await _firestore.collection('recipes').doc(id).get();
        if (kDebugMode) {
          print('Repository: Document data for recipe ID $id: ${doc.data()}');
        }
        recipes.add(Recipe.fromJson(doc.data() as Map<String, dynamic>));
      }
      if (kDebugMode) {
        print('Repository: Successfully fetched ${recipes.length} recipes');
      }
      return recipes;
    } catch (e) {
      if (kDebugMode) {
        print('Repository: Error fetching recipes by IDs - $e');
      }
      throw Exception('Error fetching recipes: $e');
    }
  }

  @override
  Future<List<SeasonalProduct>> getSeasonalProducts() async {
    try {
      if (kDebugMode) {
        print('Repository: Fetching seasonal products from Firestore...');
      }
      QuerySnapshot querySnapshot =
          await _firestore.collection('SeasonalProduct').get();
      if (kDebugMode) {
        print(
            "Repository: Number of seasonal products found: ${querySnapshot.docs.length}");
      }

      if (querySnapshot.docs.isEmpty) {
        if (kDebugMode) {
          print("Repository: No seasonal products found.");
        }
        return [];
      }

      List<SeasonalProduct> products = querySnapshot.docs.map((doc) {
        if (kDebugMode) {
          print('Repository: Document data: ${doc.data()}');
        }
        return SeasonalProduct.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();

      if (kDebugMode) {
        print('Repository: Successfully fetched seasonal products');
      }
      return products;
    } catch (e) {
      if (kDebugMode) {
        print('Repository: Error loading seasonal products - $e');
      }
      throw Exception('Error loading seasonal products: $e');
    }
  }

  @override
  Future<SeasonalProduct> getSeasonalProductById(String productId) async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection('SeasonalProduct').doc(productId).get();
      if (!doc.exists) {
        throw Exception('Seasonal product not found');
      }
      return SeasonalProduct.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print('Error getting seasonal product: $e');
      }
      throw Exception('Error getting seasonal product: $e');
    }
  }

//////////////////////////////////////////////////////////////////////////
@override
Future<void> addToFavorites(String userId, String recipeId) async {
  DocumentReference docRef = _firestore.collection('users').doc(userId);
  await _firestore.runTransaction((transaction) async {
    DocumentSnapshot snapshot = await transaction.get(docRef);
    if (snapshot.exists) {
      Map<String, bool> recipeIds = Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
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
Future<void> removeFromFavorites(String userId, String recipeId) async {
  DocumentReference docRef = _firestore.collection('users').doc(userId);
  await _firestore.runTransaction((transaction) async {
    DocumentSnapshot snapshot = await transaction.get(docRef);
    if (snapshot.exists) {
      Map<String, bool> recipeIds = Map<String, bool>.from(snapshot.get('recipeIds') ?? {});
      if (recipeIds.containsKey(recipeId)) {
        recipeIds.remove(recipeId);
        transaction.update(docRef, {'recipeIds': recipeIds});
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
}
