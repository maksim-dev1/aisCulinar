part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial() = Initial;
  const factory RecipeState.loading() = Loading;
  const factory RecipeState.loaded(List<Recipe> recipes) = Loaded;
    const factory RecipeState.recipeAdded() = RecipeAdded;
  const factory RecipeState.commentsLoaded(List<Comment> comments) = CommentsLoaded;  
  const factory RecipeState.favoritesLoaded(List<Recipe> favoriteRecipes) = FavoritesLoaded;
  const factory RecipeState.ingredientsLoaded(List<Ingredient> ingredients) = IngredientsLoaded;
  const factory RecipeState.measurementsLoaded(List<Measurement> measurements) = MeasurementsLoaded;
  const factory RecipeState.error(String message) = Error;
} 
