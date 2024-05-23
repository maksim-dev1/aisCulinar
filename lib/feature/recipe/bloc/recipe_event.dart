part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {

// Event для работы с подборками
  const factory RecipeEvent.getRecipeCollections(String collectionId) =
      _GetRecipesByCollection;
}