part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.loadRecipes() = LoadRecipes;
  const factory RecipeEvent.loadRecipeDetail(String recipeId) =
      LoadRecipeDetail;
  const factory RecipeEvent.addRecipe(
      Recipe recipe,
      List<IngredientWithQuantity> ingredientsWithQuantity,
      List<StepRecipe> steps,
      File? image) = AddRecipe;
  const factory RecipeEvent.updateRecipe(Recipe recipe) = UpdateRecipe;
  const factory RecipeEvent.deleteRecipe(String recipeId) = DeleteRecipe;
  const factory RecipeEvent.getRecipeById(String recipeId) = GetRecipeById;
  const factory RecipeEvent.getRecipesByCategory(String category) =
      GetRecipesByCategory;
  const factory RecipeEvent.searchRecipes(String query) = SearchRecipes;
  const factory RecipeEvent.addComment(
      {required String recipeId, required Comment comment}) = AddComment;
  const factory RecipeEvent.addRating(
      {required String recipeId, required Rating rating}) = AddRating;
  const factory RecipeEvent.getCommentsForRecipe(String recipeId) =
      GetCommentsForRecipe;
  const factory RecipeEvent.deleteComment(String commentId) = DeleteComment;
  const factory RecipeEvent.addIngredient(Ingredient ingredient) =
      AddIngredient;
  const factory RecipeEvent.getIngredients(String title) = GetIngredients;
  const factory RecipeEvent.searchIngredients(String query) = SearchIngredients;
  const factory RecipeEvent.getMeasurements(String title) = GetMeasurements;
  const factory RecipeEvent.getCategories(String title) = GetCategories;
  const factory RecipeEvent.filterRecipes(
    String category,
    String cookingTime,
  ) = FilterRecipes;
  const factory RecipeEvent.updateCategoryFilter(String category) =
      UpdateCategoryFilter;
  const factory RecipeEvent.updateCookingTimeFilter(String cookingTime) =
      UpdateCookingTimeFilter;

  const factory RecipeEvent.loadRecipeCollections() = LoadRecipeCollections;
  const factory RecipeEvent.loadRecipesForCollection(List<String> recipeIds) = LoadRecipesForCollection;

  const factory RecipeEvent.loadUserRecipes(String userId) = LoadUserRecipes;
  const factory RecipeEvent.loadSeasonalProducts() = LoadSeasonalProducts;
  const factory RecipeEvent.loadSeasonalProductDetail(String productId) = LoadSeasonalProductDetail ;
  //
  //  const factory RecipeEvent.addToFavorites(String userId, String recipeId) =
  //     AddToFavorites;
  const factory RecipeEvent.getFavoriteRecipes(String userId) = 
      GetFavoriteRecipes;
  // const factory RecipeEvent.removeFromFavorites(String userId, String recipeId) =
  //     RemoveFromFavorites;
  const factory RecipeEvent.loadFavoriteRecipes(String userId) =
      LoadFavoriteRecipes;
}
