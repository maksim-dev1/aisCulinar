// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      recipeId: json['recipeId'] as String,
      userId: json['userId'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      cookingTime: json['cookingTime'] as String,
      portions: (json['portions'] as num).toInt(),
      category: json['category'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
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
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'description': instance.description,
      'cookingTime': instance.cookingTime,
      'portions': instance.portions,
      'category': instance.category,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'rating': instance.rating,
      'comments': instance.comments,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      categoryId: json['categoryId'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
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

_$IngredientWithQuantityImpl _$$IngredientWithQuantityImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientWithQuantityImpl(
      ingredientWithQuantityId: json['ingredientWithQuantityId'] as String,
      ingredient:
          Ingredient.fromJson(json['ingredient'] as Map<String, dynamic>),
      quantity: json['quantity'] as String,
      measurement:
          Measurement.fromJson(json['measurement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IngredientWithQuantityImplToJson(
        _$IngredientWithQuantityImpl instance) =>
    <String, dynamic>{
      'ingredientWithQuantityId': instance.ingredientWithQuantityId,
      'ingredient': instance.ingredient,
      'quantity': instance.quantity,
      'measurement': instance.measurement,
    };

_$StepRecipeImpl _$$StepRecipeImplFromJson(Map<String, dynamic> json) =>
    _$StepRecipeImpl(
      stepId: json['stepId'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      stepNumber: (json['stepNumber'] as num).toInt(),
    );

Map<String, dynamic> _$$StepRecipeImplToJson(_$StepRecipeImpl instance) =>
    <String, dynamic>{
      'stepId': instance.stepId,
      'description': instance.description,
      'image': instance.image,
      'stepNumber': instance.stepNumber,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      commentId: json['commentId'] as String,
      userId: json['userId'] as String,
      comment: json['comment'] as String,
      userName: json['userName'] as String,
      time: DateTime.parse(json['time'] as String),
      recipeId: json['recipeId'] as String,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'userId': instance.userId,
      'comment': instance.comment,
      'userName': instance.userName,
      'time': instance.time.toIso8601String(),
      'recipeId': instance.recipeId,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      ratingId: json['ratingId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      overallRating: (json['overallRating'] as num).toDouble(),
      totalRating: (json['totalRating'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'ratingId': instance.ratingId,
      'userId': instance.userId,
      'userName': instance.userName,
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
      season: json['season'] as String,
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
      'season': instance.season,
      'taste': instance.taste,
      'benefitsAndHarms': instance.benefitsAndHarms,
      'storage': instance.storage,
      'recommendation': instance.recommendation,
      'evidence': instance.evidence,
    };
