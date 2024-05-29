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
    return Recipe.fromJson(doc.data()!);
  }

  @override
  Future<List<Recipe>> getRecipesByCategory(String category) async {
    final snapshot = await _firestore
        .collection('recipes')
        .where('category', isEqualTo: category)
        .get();
    return snapshot.docs.map((doc) => Recipe.fromJson(doc.data())).toList();
  }

  @override
  Future<List<Ingredient>> getIngredients(String title) async {
    final snapshot = await _firestore.collection('ingredients').get();
    final ingredients =
        snapshot.docs.map((doc) => Ingredient.fromJson(doc.data())).toList();
    if (kDebugMode) {
      print("Ingredients from Firestore: $ingredients");
    }
    return ingredients;
  }

  @override
  Future<List<Measurement>> getMeasurments(String title) async {
    final snapshot = await _firestore.collection('measurements').get();
    final measurements =
        snapshot.docs.map((doc) => Measurement.fromJson(doc.data())).toList();
    if (kDebugMode) {
      print("Ingredients from Firestore: $measurements");
    }
    return measurements;
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
  Future<void> addRecipe(Recipe recipe) async {
    await _firestore.collection('recipes').add(recipe.toJson());
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
}
