// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      recipeId: json['recipeId'] as String,
      userId: json['userId'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      cookingTime: (json['cookingTime'] as num).toInt(),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'recipeId': instance.recipeId,
      'userId': instance.userId,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'cookingTime': instance.cookingTime,
      'category': instance.category,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'rating': instance.rating,
      'comments': instance.comments,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      categoryId: json['categoryId'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'title': instance.title,
    };

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      ingredientId: json['ingredientId'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
    <String, dynamic>{
      'ingredientId': instance.ingredientId,
      'title': instance.title,
    };

_$MeasurementImpl _$$MeasurementImplFromJson(Map<String, dynamic> json) =>
    _$MeasurementImpl(
      measurementId: json['measurementId'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$MeasurementImplToJson(_$MeasurementImpl instance) =>
    <String, dynamic>{
      'measurementId': instance.measurementId,
      'title': instance.title,
    };

_$IngredientAndQuantityImpl _$$IngredientAndQuantityImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientAndQuantityImpl(
      ingredientAndQuantityId: json['ingredientAndQuantityId'] as String,
      ingredientId: json['ingredientId'] as String,
      quantity: json['quantity'] as String,
      measurementId: json['measurementId'] as String,
      recipeId: json['recipeId'] as String,
    );

Map<String, dynamic> _$$IngredientAndQuantityImplToJson(
        _$IngredientAndQuantityImpl instance) =>
    <String, dynamic>{
      'ingredientAndQuantityId': instance.ingredientAndQuantityId,
      'ingredientId': instance.ingredientId,
      'quantity': instance.quantity,
      'measurementId': instance.measurementId,
      'recipeId': instance.recipeId,
    };

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      stepId: json['stepId'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      recipeId: json['recipeId'] as String,
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'stepId': instance.stepId,
      'description': instance.description,
      'image': instance.image,
      'recipeId': instance.recipeId,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      commentId: json['commentId'] as String,
      userId: json['userId'] as String,
      comment: json['comment'] as String,
      time: DateTime.parse(json['time'] as String),
      recipeId: json['recipeId'] as String,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'userId': instance.userId,
      'comment': instance.comment,
      'time': instance.time.toIso8601String(),
      'recipeId': instance.recipeId,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      ratingId: json['ratingId'] as String,
      userId: json['userId'] as String,
      overallRating: (json['overallRating'] as num).toDouble(),
      totalRating: (json['totalRating'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'ratingId': instance.ratingId,
      'userId': instance.userId,
      'overallRating': instance.overallRating,
      'totalRating': instance.totalRating,
    };

_$FavoriteRecipeImpl _$$FavoriteRecipeImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteRecipeImpl(
      favoriteRecipeId: json['favoriteRecipeId'] as String,
      userId: json['userId'] as String,
      recipeId: json['recipeId'] as String,
    );

Map<String, dynamic> _$$FavoriteRecipeImplToJson(
        _$FavoriteRecipeImpl instance) =>
    <String, dynamic>{
      'favoriteRecipeId': instance.favoriteRecipeId,
      'userId': instance.userId,
      'recipeId': instance.recipeId,
    };

_$RecipeCollectionImpl _$$RecipeCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeCollectionImpl(
      recipeCollectionId: json['recipeCollectionId'] as String,
      recipeId: json['recipeId'] as String,
      recipeCollectionImage: json['recipeCollectionImage'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$RecipeCollectionImplToJson(
        _$RecipeCollectionImpl instance) =>
    <String, dynamic>{
      'recipeCollectionId': instance.recipeCollectionId,
      'recipeId': instance.recipeId,
      'recipeCollectionImage': instance.recipeCollectionImage,
      'title': instance.title,
      'description': instance.description,
    };

_$SeasonalProductImpl _$$SeasonalProductImplFromJson(
        Map<String, dynamic> json) =>
    _$SeasonalProductImpl(
      productId: json['productId'] as String,
      productIdImage: json['productIdImage'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      history: json['history'] as String,
      seson: json['seson'] as String,
      taste: json['taste'] as String,
      benefitsAndHarms: json['benefitsAndHarms'] as String,
      storage: json['storage'] as String,
      recommendation: json['recommendation'] as String,
      evidence: json['evidence'] as String,
    );

Map<String, dynamic> _$$SeasonalProductImplToJson(
        _$SeasonalProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productIdImage': instance.productIdImage,
      'title': instance.title,
      'description': instance.description,
      'history': instance.history,
      'seson': instance.seson,
      'taste': instance.taste,
      'benefitsAndHarms': instance.benefitsAndHarms,
      'storage': instance.storage,
      'recommendation': instance.recommendation,
      'evidence': instance.evidence,
    };
