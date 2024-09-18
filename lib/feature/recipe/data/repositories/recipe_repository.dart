import 'dart:io';

import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

abstract class RecipeRepository {
  Future<List<Recipe>> getRecipes();
  Future<Recipe> getRecipeById(String recipeId);
  Future<List<Recipe>> getUserRecipes(String userId);
  Future<List<Recipe>> getRecipesByCookingTime(String time);
  Future<List<Recipe>> getRecipesByCategory(String category);
  Future<List<Ingredient>> getIngredients(String title);
  Future<List<Categories>> getCategories(String title);
  Future<List<Ingredient>> searchIngredients(String query);
  Future<List<Measurement>> getMeasurements(String title);
  Future<void> addIngredient(Ingredient ingredient);
  Future<void> addRecipe(
      Recipe recipe,
      List<IngredientWithQuantity> ingredientsWithQuantity,
      List<StepRecipe> steps,
      File? image);
  Future<void> updateRecipe(Recipe recipe);
  Future<void> deleteRecipe(String recipeId);
  Future<List<Recipe>> searchRecipes(String query); 
  Future<void> addComment(String recipeId, Comment comment);
  Future<List<Comment>> getCommentsForRecipe(String recipeId);
  Future<void> deleteComment(String commentId);
  Future<void> addRating(String recipeId, Rating rating);
  Future<List<RecipeCollection>> getRecipeCollections();
  Future<List<Recipe>> getRecipesByIds(List<String> recipeIds);
Future<List<SeasonalProduct>> getSeasonalProducts();
Future<SeasonalProduct> getSeasonalProductById(String productId);

  Future<void> addToFavorites(String userId, String recipeId);
  Future<void> removeFromFavorites(String userId, String recipeId);
  Future<List<Recipe>> getFavoriteRecipesForUser(String userId);
}
