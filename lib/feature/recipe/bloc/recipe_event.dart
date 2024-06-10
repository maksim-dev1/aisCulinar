part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.loadRecipes() = LoadRecipes;
  const factory RecipeEvent.addRecipe(Recipe recipe, List<IngredientWithQuantity> ingredientsWithQuantity, List<StepRecipe> steps, File? image) = AddRecipe;
  const factory RecipeEvent.updateRecipe(Recipe recipe) = UpdateRecipe;
  const factory RecipeEvent.deleteRecipe(String recipeId) = DeleteRecipe;
  const factory RecipeEvent.getRecipeById(String recipeId) = GetRecipeById;
  const factory RecipeEvent.getRecipesByCategory(String category) = GetRecipesByCategory;
  const factory RecipeEvent.searchRecipes(String query) = SearchRecipes;
  const factory RecipeEvent.addComment(String recipeId, Comment comment) = AddComment;
  const factory RecipeEvent.getCommentsForRecipe(String recipeId) = GetCommentsForRecipe;
  const factory RecipeEvent.deleteComment(String commentId) = DeleteComment;
  const factory RecipeEvent.addToFavorites(String userId, String recipeId) = AddToFavorites;
  const factory RecipeEvent.getFavoriteRecipesForUser(String userId) = GetFavoriteRecipesForUser;
  const factory RecipeEvent.removeFromFavorites(String userId, String recipeId) = RemoveFromFavorites;
  const factory RecipeEvent.addIngredient(Ingredient ingredient) = AddIngredient;
  const factory RecipeEvent.getIngredients(String title) = GetIngredients;
  const factory RecipeEvent.searchIngredients(String query) = SearchIngredients;
  const factory RecipeEvent.getMeasurements(String title) = GetMeasurements;
  const factory RecipeEvent.getCategories(String title) = GetCategories;
}
