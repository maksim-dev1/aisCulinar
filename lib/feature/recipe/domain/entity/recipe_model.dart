import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String recipeId,
    required String userId,
    required String imageUrl,
    required String title,
    required String description,
    required String cookingTime,
    required int portions,
    required String category,
    required List<Map<String, dynamic>> ingredients,
    required List<Map<String, dynamic>> steps,
    required Rating rating,
    required List<Comment> comments,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

@freezed
class Categories with _$Categories {
  const factory Categories({
    required String categoryId,
    required String title,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String ingredientId,
    required String title,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}

@freezed
class Measurement with _$Measurement {
  const factory Measurement({
    required String measurementId,
    required String title,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}

@freezed
class IngredientWithQuantity with _$IngredientWithQuantity {
  const factory IngredientWithQuantity({
    required String ingredientWithQuantityId,
    required Ingredient ingredient,
    required String quantity,
    required Measurement measurement,
  }) = _IngredientWithQuantity;

  factory IngredientWithQuantity.fromJson(Map<String, dynamic> json) =>
      _$IngredientWithQuantityFromJson(json);
}

@freezed
class StepRecipe with _$StepRecipe {
  const factory StepRecipe({
    required String stepId,
    required String description,
    required String image,
    required int stepNumber,
  }) = _StepRecipe;

  factory StepRecipe.fromJson(Map<String, dynamic> json) =>
      _$StepRecipeFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String commentId,
    required String userId,
    required String comment,
    required DateTime time,
    required String recipeId,
    required String userName,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double overallRating,
    required int totalRatings,
    required String ratingId,
    required String userId,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class RecipeCollection with _$RecipeCollection {
  const factory RecipeCollection({
    required String recipeCollectionId,
    required List<String> recipes,
    required String recipeCollectionImage,
    required String title,
    required String description,
  }) = _RecipeCollection;

  factory RecipeCollection.fromJson(Map<String, dynamic> json) =>
      _$RecipeCollectionFromJson(json);
}


@freezed
class SeasonalProduct with _$SeasonalProduct {
  const factory SeasonalProduct(
      {required String productId,
      required String productIdImage,
      required String title,
      required String description,
      required String history,
      required String season,
      required String taste,
      required String benefitsAndHarms,
      required String storage,
      required String recommendation,
      required String evidence}) = _SeasonalProduct;

  factory SeasonalProduct.fromJson(Map<String, dynamic> json) =>
      _$SeasonalProductFromJson(json);
}
