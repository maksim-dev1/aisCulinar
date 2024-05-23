part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
    const factory RecipeState.initial() = _Initial;
  const factory RecipeState.loading() = _Loading;
  const factory RecipeState.success(List<Recipe> recipes) = _Success;
  const factory RecipeState.failure(String errorMessage) = _Failure;
}