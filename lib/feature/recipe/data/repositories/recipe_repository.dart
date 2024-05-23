import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

abstract class RecipeRepository {
 
  // Future<List<Recipe>> getRecipes(); // Получить список всех рецептов
  // Future<Recipe> getRecipeById(String recipeId); // Получить рецепт по его идентификатору
   // Future<List<Recipe>> getRecipesByCategory(String category); // Получить список рецептов определенной категории

  Future<void> addRecipe(Recipe recipe); // Добавить новый рецепт
  // Future<void> updateRecipe(Recipe recipe); // Обновить существующий рецепт
  
  // Future<void> deleteRecipe(String recipeId); // Удалить рецепт

  // Future<List<Recipe>> searchRecipes(String query); // Поиск рецептов по запросу

  // Future<void> addComment(String recipeId, Comment comment); // Добавить комментарий к рецепту
  // Future<List<Comment>> getCommentsForRecipe(String recipeId); // Получить все комментарии для конкретного рецепта
  // Future<void> deleteComment(String commentId); // Удалить комментарий по его идентификатору

  // Future<void> addToFavorites(String userId, String recipeId); // Добавить рецепт в избранное
  // Future<List<Recipe>> getFavoriteRecipesForUser(String userId); // Получить все избранные рецепты для конкретного пользователя
  // Future<void> removeFromFavorites(String userId, String recipeId); // Удалить рецепт из избранного
}