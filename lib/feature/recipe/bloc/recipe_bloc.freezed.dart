// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRecipesImplCopyWith<$Res> {
  factory _$$LoadRecipesImplCopyWith(
          _$LoadRecipesImpl value, $Res Function(_$LoadRecipesImpl) then) =
      __$$LoadRecipesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRecipesImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$LoadRecipesImpl>
    implements _$$LoadRecipesImplCopyWith<$Res> {
  __$$LoadRecipesImplCopyWithImpl(
      _$LoadRecipesImpl _value, $Res Function(_$LoadRecipesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRecipesImpl with DiagnosticableTreeMixin implements LoadRecipes {
  const _$LoadRecipesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.loadRecipes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecipeEvent.loadRecipes'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRecipesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return loadRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return loadRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (loadRecipes != null) {
      return loadRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return loadRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return loadRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (loadRecipes != null) {
      return loadRecipes(this);
    }
    return orElse();
  }
}

abstract class LoadRecipes implements RecipeEvent {
  const factory LoadRecipes() = _$LoadRecipesImpl;
}

/// @nodoc
abstract class _$$LoadRecipeDetailImplCopyWith<$Res> {
  factory _$$LoadRecipeDetailImplCopyWith(_$LoadRecipeDetailImpl value,
          $Res Function(_$LoadRecipeDetailImpl) then) =
      __$$LoadRecipeDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipeId});
}

/// @nodoc
class __$$LoadRecipeDetailImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$LoadRecipeDetailImpl>
    implements _$$LoadRecipeDetailImplCopyWith<$Res> {
  __$$LoadRecipeDetailImplCopyWithImpl(_$LoadRecipeDetailImpl _value,
      $Res Function(_$LoadRecipeDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$LoadRecipeDetailImpl(
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadRecipeDetailImpl
    with DiagnosticableTreeMixin
    implements LoadRecipeDetail {
  const _$LoadRecipeDetailImpl(this.recipeId);

  @override
  final String recipeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.loadRecipeDetail(recipeId: $recipeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.loadRecipeDetail'))
      ..add(DiagnosticsProperty('recipeId', recipeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRecipeDetailImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRecipeDetailImplCopyWith<_$LoadRecipeDetailImpl> get copyWith =>
      __$$LoadRecipeDetailImplCopyWithImpl<_$LoadRecipeDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return loadRecipeDetail(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return loadRecipeDetail?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (loadRecipeDetail != null) {
      return loadRecipeDetail(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return loadRecipeDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return loadRecipeDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (loadRecipeDetail != null) {
      return loadRecipeDetail(this);
    }
    return orElse();
  }
}

abstract class LoadRecipeDetail implements RecipeEvent {
  const factory LoadRecipeDetail(final String recipeId) =
      _$LoadRecipeDetailImpl;

  String get recipeId;
  @JsonKey(ignore: true)
  _$$LoadRecipeDetailImplCopyWith<_$LoadRecipeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRecipeImplCopyWith<$Res> {
  factory _$$AddRecipeImplCopyWith(
          _$AddRecipeImpl value, $Res Function(_$AddRecipeImpl) then) =
      __$$AddRecipeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Recipe recipe,
      List<IngredientWithQuantity> ingredientsWithQuantity,
      List<StepRecipe> steps,
      File? image});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$AddRecipeImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$AddRecipeImpl>
    implements _$$AddRecipeImplCopyWith<$Res> {
  __$$AddRecipeImplCopyWithImpl(
      _$AddRecipeImpl _value, $Res Function(_$AddRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? ingredientsWithQuantity = null,
    Object? steps = null,
    Object? image = freezed,
  }) {
    return _then(_$AddRecipeImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      null == ingredientsWithQuantity
          ? _value._ingredientsWithQuantity
          : ingredientsWithQuantity // ignore: cast_nullable_to_non_nullable
              as List<IngredientWithQuantity>,
      null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepRecipe>,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$AddRecipeImpl with DiagnosticableTreeMixin implements AddRecipe {
  const _$AddRecipeImpl(
      this.recipe,
      final List<IngredientWithQuantity> ingredientsWithQuantity,
      final List<StepRecipe> steps,
      this.image)
      : _ingredientsWithQuantity = ingredientsWithQuantity,
        _steps = steps;

  @override
  final Recipe recipe;
  final List<IngredientWithQuantity> _ingredientsWithQuantity;
  @override
  List<IngredientWithQuantity> get ingredientsWithQuantity {
    if (_ingredientsWithQuantity is EqualUnmodifiableListView)
      return _ingredientsWithQuantity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientsWithQuantity);
  }

  final List<StepRecipe> _steps;
  @override
  List<StepRecipe> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final File? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.addRecipe(recipe: $recipe, ingredientsWithQuantity: $ingredientsWithQuantity, steps: $steps, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.addRecipe'))
      ..add(DiagnosticsProperty('recipe', recipe))
      ..add(DiagnosticsProperty(
          'ingredientsWithQuantity', ingredientsWithQuantity))
      ..add(DiagnosticsProperty('steps', steps))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRecipeImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            const DeepCollectionEquality().equals(
                other._ingredientsWithQuantity, _ingredientsWithQuantity) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipe,
      const DeepCollectionEquality().hash(_ingredientsWithQuantity),
      const DeepCollectionEquality().hash(_steps),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRecipeImplCopyWith<_$AddRecipeImpl> get copyWith =>
      __$$AddRecipeImplCopyWithImpl<_$AddRecipeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return addRecipe(recipe, ingredientsWithQuantity, steps, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return addRecipe?.call(recipe, ingredientsWithQuantity, steps, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addRecipe != null) {
      return addRecipe(recipe, ingredientsWithQuantity, steps, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return addRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return addRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addRecipe != null) {
      return addRecipe(this);
    }
    return orElse();
  }
}

abstract class AddRecipe implements RecipeEvent {
  const factory AddRecipe(
      final Recipe recipe,
      final List<IngredientWithQuantity> ingredientsWithQuantity,
      final List<StepRecipe> steps,
      final File? image) = _$AddRecipeImpl;

  Recipe get recipe;
  List<IngredientWithQuantity> get ingredientsWithQuantity;
  List<StepRecipe> get steps;
  File? get image;
  @JsonKey(ignore: true)
  _$$AddRecipeImplCopyWith<_$AddRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRecipeImplCopyWith<$Res> {
  factory _$$UpdateRecipeImplCopyWith(
          _$UpdateRecipeImpl value, $Res Function(_$UpdateRecipeImpl) then) =
      __$$UpdateRecipeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$UpdateRecipeImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$UpdateRecipeImpl>
    implements _$$UpdateRecipeImplCopyWith<$Res> {
  __$$UpdateRecipeImplCopyWithImpl(
      _$UpdateRecipeImpl _value, $Res Function(_$UpdateRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$UpdateRecipeImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$UpdateRecipeImpl with DiagnosticableTreeMixin implements UpdateRecipe {
  const _$UpdateRecipeImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.updateRecipe(recipe: $recipe)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.updateRecipe'))
      ..add(DiagnosticsProperty('recipe', recipe));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRecipeImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRecipeImplCopyWith<_$UpdateRecipeImpl> get copyWith =>
      __$$UpdateRecipeImplCopyWithImpl<_$UpdateRecipeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return updateRecipe(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return updateRecipe?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (updateRecipe != null) {
      return updateRecipe(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return updateRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return updateRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (updateRecipe != null) {
      return updateRecipe(this);
    }
    return orElse();
  }
}

abstract class UpdateRecipe implements RecipeEvent {
  const factory UpdateRecipe(final Recipe recipe) = _$UpdateRecipeImpl;

  Recipe get recipe;
  @JsonKey(ignore: true)
  _$$UpdateRecipeImplCopyWith<_$UpdateRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRecipeImplCopyWith<$Res> {
  factory _$$DeleteRecipeImplCopyWith(
          _$DeleteRecipeImpl value, $Res Function(_$DeleteRecipeImpl) then) =
      __$$DeleteRecipeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipeId});
}

/// @nodoc
class __$$DeleteRecipeImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$DeleteRecipeImpl>
    implements _$$DeleteRecipeImplCopyWith<$Res> {
  __$$DeleteRecipeImplCopyWithImpl(
      _$DeleteRecipeImpl _value, $Res Function(_$DeleteRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$DeleteRecipeImpl(
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteRecipeImpl with DiagnosticableTreeMixin implements DeleteRecipe {
  const _$DeleteRecipeImpl(this.recipeId);

  @override
  final String recipeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.deleteRecipe(recipeId: $recipeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.deleteRecipe'))
      ..add(DiagnosticsProperty('recipeId', recipeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRecipeImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRecipeImplCopyWith<_$DeleteRecipeImpl> get copyWith =>
      __$$DeleteRecipeImplCopyWithImpl<_$DeleteRecipeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return deleteRecipe(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return deleteRecipe?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (deleteRecipe != null) {
      return deleteRecipe(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return deleteRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return deleteRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (deleteRecipe != null) {
      return deleteRecipe(this);
    }
    return orElse();
  }
}

abstract class DeleteRecipe implements RecipeEvent {
  const factory DeleteRecipe(final String recipeId) = _$DeleteRecipeImpl;

  String get recipeId;
  @JsonKey(ignore: true)
  _$$DeleteRecipeImplCopyWith<_$DeleteRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRecipeByIdImplCopyWith<$Res> {
  factory _$$GetRecipeByIdImplCopyWith(
          _$GetRecipeByIdImpl value, $Res Function(_$GetRecipeByIdImpl) then) =
      __$$GetRecipeByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipeId});
}

/// @nodoc
class __$$GetRecipeByIdImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$GetRecipeByIdImpl>
    implements _$$GetRecipeByIdImplCopyWith<$Res> {
  __$$GetRecipeByIdImplCopyWithImpl(
      _$GetRecipeByIdImpl _value, $Res Function(_$GetRecipeByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$GetRecipeByIdImpl(
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRecipeByIdImpl
    with DiagnosticableTreeMixin
    implements GetRecipeById {
  const _$GetRecipeByIdImpl(this.recipeId);

  @override
  final String recipeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.getRecipeById(recipeId: $recipeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.getRecipeById'))
      ..add(DiagnosticsProperty('recipeId', recipeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecipeByIdImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecipeByIdImplCopyWith<_$GetRecipeByIdImpl> get copyWith =>
      __$$GetRecipeByIdImplCopyWithImpl<_$GetRecipeByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return getRecipeById(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return getRecipeById?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getRecipeById != null) {
      return getRecipeById(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return getRecipeById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return getRecipeById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getRecipeById != null) {
      return getRecipeById(this);
    }
    return orElse();
  }
}

abstract class GetRecipeById implements RecipeEvent {
  const factory GetRecipeById(final String recipeId) = _$GetRecipeByIdImpl;

  String get recipeId;
  @JsonKey(ignore: true)
  _$$GetRecipeByIdImplCopyWith<_$GetRecipeByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRecipesByCategoryImplCopyWith<$Res> {
  factory _$$GetRecipesByCategoryImplCopyWith(_$GetRecipesByCategoryImpl value,
          $Res Function(_$GetRecipesByCategoryImpl) then) =
      __$$GetRecipesByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$GetRecipesByCategoryImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$GetRecipesByCategoryImpl>
    implements _$$GetRecipesByCategoryImplCopyWith<$Res> {
  __$$GetRecipesByCategoryImplCopyWithImpl(_$GetRecipesByCategoryImpl _value,
      $Res Function(_$GetRecipesByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetRecipesByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRecipesByCategoryImpl
    with DiagnosticableTreeMixin
    implements GetRecipesByCategory {
  const _$GetRecipesByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.getRecipesByCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.getRecipesByCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecipesByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecipesByCategoryImplCopyWith<_$GetRecipesByCategoryImpl>
      get copyWith =>
          __$$GetRecipesByCategoryImplCopyWithImpl<_$GetRecipesByCategoryImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return getRecipesByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return getRecipesByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getRecipesByCategory != null) {
      return getRecipesByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return getRecipesByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return getRecipesByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getRecipesByCategory != null) {
      return getRecipesByCategory(this);
    }
    return orElse();
  }
}

abstract class GetRecipesByCategory implements RecipeEvent {
  const factory GetRecipesByCategory(final String category) =
      _$GetRecipesByCategoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$GetRecipesByCategoryImplCopyWith<_$GetRecipesByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchRecipesImplCopyWith<$Res> {
  factory _$$SearchRecipesImplCopyWith(
          _$SearchRecipesImpl value, $Res Function(_$SearchRecipesImpl) then) =
      __$$SearchRecipesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchRecipesImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$SearchRecipesImpl>
    implements _$$SearchRecipesImplCopyWith<$Res> {
  __$$SearchRecipesImplCopyWithImpl(
      _$SearchRecipesImpl _value, $Res Function(_$SearchRecipesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchRecipesImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRecipesImpl
    with DiagnosticableTreeMixin
    implements SearchRecipes {
  const _$SearchRecipesImpl(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.searchRecipes(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.searchRecipes'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipesImplCopyWith<_$SearchRecipesImpl> get copyWith =>
      __$$SearchRecipesImplCopyWithImpl<_$SearchRecipesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return searchRecipes(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return searchRecipes?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (searchRecipes != null) {
      return searchRecipes(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return searchRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return searchRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (searchRecipes != null) {
      return searchRecipes(this);
    }
    return orElse();
  }
}

abstract class SearchRecipes implements RecipeEvent {
  const factory SearchRecipes(final String query) = _$SearchRecipesImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchRecipesImplCopyWith<_$SearchRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentImplCopyWith<$Res> {
  factory _$$AddCommentImplCopyWith(
          _$AddCommentImpl value, $Res Function(_$AddCommentImpl) then) =
      __$$AddCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipeId, Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$AddCommentImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$AddCommentImpl>
    implements _$$AddCommentImplCopyWith<$Res> {
  __$$AddCommentImplCopyWithImpl(
      _$AddCommentImpl _value, $Res Function(_$AddCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? comment = null,
  }) {
    return _then(_$AddCommentImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$AddCommentImpl with DiagnosticableTreeMixin implements AddComment {
  const _$AddCommentImpl({required this.recipeId, required this.comment});

  @override
  final String recipeId;
  @override
  final Comment comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.addComment(recipeId: $recipeId, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.addComment'))
      ..add(DiagnosticsProperty('recipeId', recipeId))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentImplCopyWith<_$AddCommentImpl> get copyWith =>
      __$$AddCommentImplCopyWithImpl<_$AddCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return addComment(recipeId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return addComment?.call(recipeId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(recipeId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class AddComment implements RecipeEvent {
  const factory AddComment(
      {required final String recipeId,
      required final Comment comment}) = _$AddCommentImpl;

  String get recipeId;
  Comment get comment;
  @JsonKey(ignore: true)
  _$$AddCommentImplCopyWith<_$AddCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRatingImplCopyWith<$Res> {
  factory _$$AddRatingImplCopyWith(
          _$AddRatingImpl value, $Res Function(_$AddRatingImpl) then) =
      __$$AddRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipeId, Rating rating});

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$AddRatingImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$AddRatingImpl>
    implements _$$AddRatingImplCopyWith<$Res> {
  __$$AddRatingImplCopyWithImpl(
      _$AddRatingImpl _value, $Res Function(_$AddRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? rating = null,
  }) {
    return _then(_$AddRatingImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc

class _$AddRatingImpl with DiagnosticableTreeMixin implements AddRating {
  const _$AddRatingImpl({required this.recipeId, required this.rating});

  @override
  final String recipeId;
  @override
  final Rating rating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.addRating(recipeId: $recipeId, rating: $rating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.addRating'))
      ..add(DiagnosticsProperty('recipeId', recipeId))
      ..add(DiagnosticsProperty('rating', rating));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRatingImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRatingImplCopyWith<_$AddRatingImpl> get copyWith =>
      __$$AddRatingImplCopyWithImpl<_$AddRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return addRating(recipeId, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return addRating?.call(recipeId, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(recipeId, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return addRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return addRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(this);
    }
    return orElse();
  }
}

abstract class AddRating implements RecipeEvent {
  const factory AddRating(
      {required final String recipeId,
      required final Rating rating}) = _$AddRatingImpl;

  String get recipeId;
  Rating get rating;
  @JsonKey(ignore: true)
  _$$AddRatingImplCopyWith<_$AddRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentsForRecipeImplCopyWith<$Res> {
  factory _$$GetCommentsForRecipeImplCopyWith(_$GetCommentsForRecipeImpl value,
          $Res Function(_$GetCommentsForRecipeImpl) then) =
      __$$GetCommentsForRecipeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipeId});
}

/// @nodoc
class __$$GetCommentsForRecipeImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$GetCommentsForRecipeImpl>
    implements _$$GetCommentsForRecipeImplCopyWith<$Res> {
  __$$GetCommentsForRecipeImplCopyWithImpl(_$GetCommentsForRecipeImpl _value,
      $Res Function(_$GetCommentsForRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$GetCommentsForRecipeImpl(
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCommentsForRecipeImpl
    with DiagnosticableTreeMixin
    implements GetCommentsForRecipe {
  const _$GetCommentsForRecipeImpl(this.recipeId);

  @override
  final String recipeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.getCommentsForRecipe(recipeId: $recipeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.getCommentsForRecipe'))
      ..add(DiagnosticsProperty('recipeId', recipeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsForRecipeImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsForRecipeImplCopyWith<_$GetCommentsForRecipeImpl>
      get copyWith =>
          __$$GetCommentsForRecipeImplCopyWithImpl<_$GetCommentsForRecipeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return getCommentsForRecipe(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return getCommentsForRecipe?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getCommentsForRecipe != null) {
      return getCommentsForRecipe(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return getCommentsForRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return getCommentsForRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getCommentsForRecipe != null) {
      return getCommentsForRecipe(this);
    }
    return orElse();
  }
}

abstract class GetCommentsForRecipe implements RecipeEvent {
  const factory GetCommentsForRecipe(final String recipeId) =
      _$GetCommentsForRecipeImpl;

  String get recipeId;
  @JsonKey(ignore: true)
  _$$GetCommentsForRecipeImplCopyWith<_$GetCommentsForRecipeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentImplCopyWith<$Res> {
  factory _$$DeleteCommentImplCopyWith(
          _$DeleteCommentImpl value, $Res Function(_$DeleteCommentImpl) then) =
      __$$DeleteCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commentId});
}

/// @nodoc
class __$$DeleteCommentImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$DeleteCommentImpl>
    implements _$$DeleteCommentImplCopyWith<$Res> {
  __$$DeleteCommentImplCopyWithImpl(
      _$DeleteCommentImpl _value, $Res Function(_$DeleteCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$DeleteCommentImpl(
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCommentImpl
    with DiagnosticableTreeMixin
    implements DeleteComment {
  const _$DeleteCommentImpl(this.commentId);

  @override
  final String commentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.deleteComment(commentId: $commentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.deleteComment'))
      ..add(DiagnosticsProperty('commentId', commentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      __$$DeleteCommentImplCopyWithImpl<_$DeleteCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return deleteComment(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return deleteComment?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class DeleteComment implements RecipeEvent {
  const factory DeleteComment(final String commentId) = _$DeleteCommentImpl;

  String get commentId;
  @JsonKey(ignore: true)
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddIngredientImplCopyWith<$Res> {
  factory _$$AddIngredientImplCopyWith(
          _$AddIngredientImpl value, $Res Function(_$AddIngredientImpl) then) =
      __$$AddIngredientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ingredient ingredient});

  $IngredientCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$AddIngredientImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$AddIngredientImpl>
    implements _$$AddIngredientImplCopyWith<$Res> {
  __$$AddIngredientImplCopyWithImpl(
      _$AddIngredientImpl _value, $Res Function(_$AddIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_$AddIngredientImpl(
      null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<$Res> get ingredient {
    return $IngredientCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value));
    });
  }
}

/// @nodoc

class _$AddIngredientImpl
    with DiagnosticableTreeMixin
    implements AddIngredient {
  const _$AddIngredientImpl(this.ingredient);

  @override
  final Ingredient ingredient;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.addIngredient(ingredient: $ingredient)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.addIngredient'))
      ..add(DiagnosticsProperty('ingredient', ingredient));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddIngredientImpl &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddIngredientImplCopyWith<_$AddIngredientImpl> get copyWith =>
      __$$AddIngredientImplCopyWithImpl<_$AddIngredientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return addIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return addIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(ingredient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return addIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return addIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(this);
    }
    return orElse();
  }
}

abstract class AddIngredient implements RecipeEvent {
  const factory AddIngredient(final Ingredient ingredient) =
      _$AddIngredientImpl;

  Ingredient get ingredient;
  @JsonKey(ignore: true)
  _$$AddIngredientImplCopyWith<_$AddIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIngredientsImplCopyWith<$Res> {
  factory _$$GetIngredientsImplCopyWith(_$GetIngredientsImpl value,
          $Res Function(_$GetIngredientsImpl) then) =
      __$$GetIngredientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$GetIngredientsImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$GetIngredientsImpl>
    implements _$$GetIngredientsImplCopyWith<$Res> {
  __$$GetIngredientsImplCopyWithImpl(
      _$GetIngredientsImpl _value, $Res Function(_$GetIngredientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$GetIngredientsImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetIngredientsImpl
    with DiagnosticableTreeMixin
    implements GetIngredients {
  const _$GetIngredientsImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.getIngredients(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.getIngredients'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIngredientsImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetIngredientsImplCopyWith<_$GetIngredientsImpl> get copyWith =>
      __$$GetIngredientsImplCopyWithImpl<_$GetIngredientsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return getIngredients(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return getIngredients?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getIngredients != null) {
      return getIngredients(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return getIngredients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return getIngredients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getIngredients != null) {
      return getIngredients(this);
    }
    return orElse();
  }
}

abstract class GetIngredients implements RecipeEvent {
  const factory GetIngredients(final String title) = _$GetIngredientsImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$GetIngredientsImplCopyWith<_$GetIngredientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchIngredientsImplCopyWith<$Res> {
  factory _$$SearchIngredientsImplCopyWith(_$SearchIngredientsImpl value,
          $Res Function(_$SearchIngredientsImpl) then) =
      __$$SearchIngredientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchIngredientsImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$SearchIngredientsImpl>
    implements _$$SearchIngredientsImplCopyWith<$Res> {
  __$$SearchIngredientsImplCopyWithImpl(_$SearchIngredientsImpl _value,
      $Res Function(_$SearchIngredientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchIngredientsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchIngredientsImpl
    with DiagnosticableTreeMixin
    implements SearchIngredients {
  const _$SearchIngredientsImpl(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.searchIngredients(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.searchIngredients'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchIngredientsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchIngredientsImplCopyWith<_$SearchIngredientsImpl> get copyWith =>
      __$$SearchIngredientsImplCopyWithImpl<_$SearchIngredientsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return searchIngredients(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return searchIngredients?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (searchIngredients != null) {
      return searchIngredients(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return searchIngredients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return searchIngredients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (searchIngredients != null) {
      return searchIngredients(this);
    }
    return orElse();
  }
}

abstract class SearchIngredients implements RecipeEvent {
  const factory SearchIngredients(final String query) = _$SearchIngredientsImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchIngredientsImplCopyWith<_$SearchIngredientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMeasurementsImplCopyWith<$Res> {
  factory _$$GetMeasurementsImplCopyWith(_$GetMeasurementsImpl value,
          $Res Function(_$GetMeasurementsImpl) then) =
      __$$GetMeasurementsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$GetMeasurementsImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$GetMeasurementsImpl>
    implements _$$GetMeasurementsImplCopyWith<$Res> {
  __$$GetMeasurementsImplCopyWithImpl(
      _$GetMeasurementsImpl _value, $Res Function(_$GetMeasurementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$GetMeasurementsImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMeasurementsImpl
    with DiagnosticableTreeMixin
    implements GetMeasurements {
  const _$GetMeasurementsImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.getMeasurements(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.getMeasurements'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMeasurementsImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMeasurementsImplCopyWith<_$GetMeasurementsImpl> get copyWith =>
      __$$GetMeasurementsImplCopyWithImpl<_$GetMeasurementsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return getMeasurements(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return getMeasurements?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getMeasurements != null) {
      return getMeasurements(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return getMeasurements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return getMeasurements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getMeasurements != null) {
      return getMeasurements(this);
    }
    return orElse();
  }
}

abstract class GetMeasurements implements RecipeEvent {
  const factory GetMeasurements(final String title) = _$GetMeasurementsImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$GetMeasurementsImplCopyWith<_$GetMeasurementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoriesImplCopyWith<$Res> {
  factory _$$GetCategoriesImplCopyWith(
          _$GetCategoriesImpl value, $Res Function(_$GetCategoriesImpl) then) =
      __$$GetCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$GetCategoriesImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$GetCategoriesImpl>
    implements _$$GetCategoriesImplCopyWith<$Res> {
  __$$GetCategoriesImplCopyWithImpl(
      _$GetCategoriesImpl _value, $Res Function(_$GetCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$GetCategoriesImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoriesImpl
    with DiagnosticableTreeMixin
    implements GetCategories {
  const _$GetCategoriesImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.getCategories(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.getCategories'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesImplCopyWith<_$GetCategoriesImpl> get copyWith =>
      __$$GetCategoriesImplCopyWithImpl<_$GetCategoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return getCategories(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return getCategories?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategories implements RecipeEvent {
  const factory GetCategories(final String title) = _$GetCategoriesImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$GetCategoriesImplCopyWith<_$GetCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterRecipesImplCopyWith<$Res> {
  factory _$$FilterRecipesImplCopyWith(
          _$FilterRecipesImpl value, $Res Function(_$FilterRecipesImpl) then) =
      __$$FilterRecipesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String cookingTime});
}

/// @nodoc
class __$$FilterRecipesImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$FilterRecipesImpl>
    implements _$$FilterRecipesImplCopyWith<$Res> {
  __$$FilterRecipesImplCopyWithImpl(
      _$FilterRecipesImpl _value, $Res Function(_$FilterRecipesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? cookingTime = null,
  }) {
    return _then(_$FilterRecipesImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterRecipesImpl
    with DiagnosticableTreeMixin
    implements FilterRecipes {
  const _$FilterRecipesImpl(this.category, this.cookingTime);

  @override
  final String category;
  @override
  final String cookingTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.filterRecipes(category: $category, cookingTime: $cookingTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.filterRecipes'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('cookingTime', cookingTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterRecipesImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, cookingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterRecipesImplCopyWith<_$FilterRecipesImpl> get copyWith =>
      __$$FilterRecipesImplCopyWithImpl<_$FilterRecipesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return filterRecipes(category, cookingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return filterRecipes?.call(category, cookingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (filterRecipes != null) {
      return filterRecipes(category, cookingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return filterRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return filterRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (filterRecipes != null) {
      return filterRecipes(this);
    }
    return orElse();
  }
}

abstract class FilterRecipes implements RecipeEvent {
  const factory FilterRecipes(final String category, final String cookingTime) =
      _$FilterRecipesImpl;

  String get category;
  String get cookingTime;
  @JsonKey(ignore: true)
  _$$FilterRecipesImplCopyWith<_$FilterRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryFilterImplCopyWith<$Res> {
  factory _$$UpdateCategoryFilterImplCopyWith(_$UpdateCategoryFilterImpl value,
          $Res Function(_$UpdateCategoryFilterImpl) then) =
      __$$UpdateCategoryFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$UpdateCategoryFilterImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$UpdateCategoryFilterImpl>
    implements _$$UpdateCategoryFilterImplCopyWith<$Res> {
  __$$UpdateCategoryFilterImplCopyWithImpl(_$UpdateCategoryFilterImpl _value,
      $Res Function(_$UpdateCategoryFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$UpdateCategoryFilterImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryFilterImpl
    with DiagnosticableTreeMixin
    implements UpdateCategoryFilter {
  const _$UpdateCategoryFilterImpl(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.updateCategoryFilter(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.updateCategoryFilter'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryFilterImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryFilterImplCopyWith<_$UpdateCategoryFilterImpl>
      get copyWith =>
          __$$UpdateCategoryFilterImplCopyWithImpl<_$UpdateCategoryFilterImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return updateCategoryFilter(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return updateCategoryFilter?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (updateCategoryFilter != null) {
      return updateCategoryFilter(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return updateCategoryFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return updateCategoryFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (updateCategoryFilter != null) {
      return updateCategoryFilter(this);
    }
    return orElse();
  }
}

abstract class UpdateCategoryFilter implements RecipeEvent {
  const factory UpdateCategoryFilter(final String category) =
      _$UpdateCategoryFilterImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$UpdateCategoryFilterImplCopyWith<_$UpdateCategoryFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCookingTimeFilterImplCopyWith<$Res> {
  factory _$$UpdateCookingTimeFilterImplCopyWith(
          _$UpdateCookingTimeFilterImpl value,
          $Res Function(_$UpdateCookingTimeFilterImpl) then) =
      __$$UpdateCookingTimeFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cookingTime});
}

/// @nodoc
class __$$UpdateCookingTimeFilterImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$UpdateCookingTimeFilterImpl>
    implements _$$UpdateCookingTimeFilterImplCopyWith<$Res> {
  __$$UpdateCookingTimeFilterImplCopyWithImpl(
      _$UpdateCookingTimeFilterImpl _value,
      $Res Function(_$UpdateCookingTimeFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cookingTime = null,
  }) {
    return _then(_$UpdateCookingTimeFilterImpl(
      null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCookingTimeFilterImpl
    with DiagnosticableTreeMixin
    implements UpdateCookingTimeFilter {
  const _$UpdateCookingTimeFilterImpl(this.cookingTime);

  @override
  final String cookingTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.updateCookingTimeFilter(cookingTime: $cookingTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeEvent.updateCookingTimeFilter'))
      ..add(DiagnosticsProperty('cookingTime', cookingTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCookingTimeFilterImpl &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cookingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCookingTimeFilterImplCopyWith<_$UpdateCookingTimeFilterImpl>
      get copyWith => __$$UpdateCookingTimeFilterImplCopyWithImpl<
          _$UpdateCookingTimeFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return updateCookingTimeFilter(cookingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return updateCookingTimeFilter?.call(cookingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (updateCookingTimeFilter != null) {
      return updateCookingTimeFilter(cookingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return updateCookingTimeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return updateCookingTimeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (updateCookingTimeFilter != null) {
      return updateCookingTimeFilter(this);
    }
    return orElse();
  }
}

abstract class UpdateCookingTimeFilter implements RecipeEvent {
  const factory UpdateCookingTimeFilter(final String cookingTime) =
      _$UpdateCookingTimeFilterImpl;

  String get cookingTime;
  @JsonKey(ignore: true)
  _$$UpdateCookingTimeFilterImplCopyWith<_$UpdateCookingTimeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadRecipeCollectionsImplCopyWith<$Res> {
  factory _$$LoadRecipeCollectionsImplCopyWith(
          _$LoadRecipeCollectionsImpl value,
          $Res Function(_$LoadRecipeCollectionsImpl) then) =
      __$$LoadRecipeCollectionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRecipeCollectionsImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$LoadRecipeCollectionsImpl>
    implements _$$LoadRecipeCollectionsImplCopyWith<$Res> {
  __$$LoadRecipeCollectionsImplCopyWithImpl(_$LoadRecipeCollectionsImpl _value,
      $Res Function(_$LoadRecipeCollectionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRecipeCollectionsImpl
    with DiagnosticableTreeMixin
    implements LoadRecipeCollections {
  const _$LoadRecipeCollectionsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeEvent.loadRecipeCollections()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecipeEvent.loadRecipeCollections'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRecipeCollectionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecipes,
    required TResult Function(String recipeId) loadRecipeDetail,
    required TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)
        addRecipe,
    required TResult Function(Recipe recipe) updateRecipe,
    required TResult Function(String recipeId) deleteRecipe,
    required TResult Function(String recipeId) getRecipeById,
    required TResult Function(String category) getRecipesByCategory,
    required TResult Function(String query) searchRecipes,
    required TResult Function(String recipeId, Comment comment) addComment,
    required TResult Function(String recipeId, Rating rating) addRating,
    required TResult Function(String recipeId) getCommentsForRecipe,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(Ingredient ingredient) addIngredient,
    required TResult Function(String title) getIngredients,
    required TResult Function(String query) searchIngredients,
    required TResult Function(String title) getMeasurements,
    required TResult Function(String title) getCategories,
    required TResult Function(String category, String cookingTime)
        filterRecipes,
    required TResult Function(String category) updateCategoryFilter,
    required TResult Function(String cookingTime) updateCookingTimeFilter,
    required TResult Function() loadRecipeCollections,
  }) {
    return loadRecipeCollections();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecipes,
    TResult? Function(String recipeId)? loadRecipeDetail,
    TResult? Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult? Function(Recipe recipe)? updateRecipe,
    TResult? Function(String recipeId)? deleteRecipe,
    TResult? Function(String recipeId)? getRecipeById,
    TResult? Function(String category)? getRecipesByCategory,
    TResult? Function(String query)? searchRecipes,
    TResult? Function(String recipeId, Comment comment)? addComment,
    TResult? Function(String recipeId, Rating rating)? addRating,
    TResult? Function(String recipeId)? getCommentsForRecipe,
    TResult? Function(String commentId)? deleteComment,
    TResult? Function(Ingredient ingredient)? addIngredient,
    TResult? Function(String title)? getIngredients,
    TResult? Function(String query)? searchIngredients,
    TResult? Function(String title)? getMeasurements,
    TResult? Function(String title)? getCategories,
    TResult? Function(String category, String cookingTime)? filterRecipes,
    TResult? Function(String category)? updateCategoryFilter,
    TResult? Function(String cookingTime)? updateCookingTimeFilter,
    TResult? Function()? loadRecipeCollections,
  }) {
    return loadRecipeCollections?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecipes,
    TResult Function(String recipeId)? loadRecipeDetail,
    TResult Function(
            Recipe recipe,
            List<IngredientWithQuantity> ingredientsWithQuantity,
            List<StepRecipe> steps,
            File? image)?
        addRecipe,
    TResult Function(Recipe recipe)? updateRecipe,
    TResult Function(String recipeId)? deleteRecipe,
    TResult Function(String recipeId)? getRecipeById,
    TResult Function(String category)? getRecipesByCategory,
    TResult Function(String query)? searchRecipes,
    TResult Function(String recipeId, Comment comment)? addComment,
    TResult Function(String recipeId, Rating rating)? addRating,
    TResult Function(String recipeId)? getCommentsForRecipe,
    TResult Function(String commentId)? deleteComment,
    TResult Function(Ingredient ingredient)? addIngredient,
    TResult Function(String title)? getIngredients,
    TResult Function(String query)? searchIngredients,
    TResult Function(String title)? getMeasurements,
    TResult Function(String title)? getCategories,
    TResult Function(String category, String cookingTime)? filterRecipes,
    TResult Function(String category)? updateCategoryFilter,
    TResult Function(String cookingTime)? updateCookingTimeFilter,
    TResult Function()? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (loadRecipeCollections != null) {
      return loadRecipeCollections();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRecipes value) loadRecipes,
    required TResult Function(LoadRecipeDetail value) loadRecipeDetail,
    required TResult Function(AddRecipe value) addRecipe,
    required TResult Function(UpdateRecipe value) updateRecipe,
    required TResult Function(DeleteRecipe value) deleteRecipe,
    required TResult Function(GetRecipeById value) getRecipeById,
    required TResult Function(GetRecipesByCategory value) getRecipesByCategory,
    required TResult Function(SearchRecipes value) searchRecipes,
    required TResult Function(AddComment value) addComment,
    required TResult Function(AddRating value) addRating,
    required TResult Function(GetCommentsForRecipe value) getCommentsForRecipe,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddIngredient value) addIngredient,
    required TResult Function(GetIngredients value) getIngredients,
    required TResult Function(SearchIngredients value) searchIngredients,
    required TResult Function(GetMeasurements value) getMeasurements,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(FilterRecipes value) filterRecipes,
    required TResult Function(UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(UpdateCookingTimeFilter value)
        updateCookingTimeFilter,
    required TResult Function(LoadRecipeCollections value)
        loadRecipeCollections,
  }) {
    return loadRecipeCollections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRecipes value)? loadRecipes,
    TResult? Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult? Function(AddRecipe value)? addRecipe,
    TResult? Function(UpdateRecipe value)? updateRecipe,
    TResult? Function(DeleteRecipe value)? deleteRecipe,
    TResult? Function(GetRecipeById value)? getRecipeById,
    TResult? Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult? Function(SearchRecipes value)? searchRecipes,
    TResult? Function(AddComment value)? addComment,
    TResult? Function(AddRating value)? addRating,
    TResult? Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(AddIngredient value)? addIngredient,
    TResult? Function(GetIngredients value)? getIngredients,
    TResult? Function(SearchIngredients value)? searchIngredients,
    TResult? Function(GetMeasurements value)? getMeasurements,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(FilterRecipes value)? filterRecipes,
    TResult? Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult? Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult? Function(LoadRecipeCollections value)? loadRecipeCollections,
  }) {
    return loadRecipeCollections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRecipes value)? loadRecipes,
    TResult Function(LoadRecipeDetail value)? loadRecipeDetail,
    TResult Function(AddRecipe value)? addRecipe,
    TResult Function(UpdateRecipe value)? updateRecipe,
    TResult Function(DeleteRecipe value)? deleteRecipe,
    TResult Function(GetRecipeById value)? getRecipeById,
    TResult Function(GetRecipesByCategory value)? getRecipesByCategory,
    TResult Function(SearchRecipes value)? searchRecipes,
    TResult Function(AddComment value)? addComment,
    TResult Function(AddRating value)? addRating,
    TResult Function(GetCommentsForRecipe value)? getCommentsForRecipe,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddIngredient value)? addIngredient,
    TResult Function(GetIngredients value)? getIngredients,
    TResult Function(SearchIngredients value)? searchIngredients,
    TResult Function(GetMeasurements value)? getMeasurements,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(FilterRecipes value)? filterRecipes,
    TResult Function(UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(UpdateCookingTimeFilter value)? updateCookingTimeFilter,
    TResult Function(LoadRecipeCollections value)? loadRecipeCollections,
    required TResult orElse(),
  }) {
    if (loadRecipeCollections != null) {
      return loadRecipeCollections(this);
    }
    return orElse();
  }
}

abstract class LoadRecipeCollections implements RecipeEvent {
  const factory LoadRecipeCollections() = _$LoadRecipeCollectionsImpl;
}

/// @nodoc
mixin _$RecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialRecipeImplCopyWith<$Res> {
  factory _$$InitialRecipeImplCopyWith(
          _$InitialRecipeImpl value, $Res Function(_$InitialRecipeImpl) then) =
      __$$InitialRecipeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialRecipeImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$InitialRecipeImpl>
    implements _$$InitialRecipeImplCopyWith<$Res> {
  __$$InitialRecipeImplCopyWithImpl(
      _$InitialRecipeImpl _value, $Res Function(_$InitialRecipeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialRecipeImpl
    with DiagnosticableTreeMixin
    implements InitialRecipe {
  const _$InitialRecipeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecipeState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialRecipeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialRecipe implements RecipeState {
  const factory InitialRecipe() = _$InitialRecipeImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecipeState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RecipeState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$LoadedImpl(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements Loaded {
  const _$LoadedImpl(final List<Recipe> recipes) : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.loaded(recipes: $recipes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.loaded'))
      ..add(DiagnosticsProperty('recipes', recipes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return loaded(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return loaded?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements RecipeState {
  const factory Loaded(final List<Recipe> recipes) = _$LoadedImpl;

  List<Recipe> get recipes;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeLoadingImplCopyWith<$Res> {
  factory _$$RecipeLoadingImplCopyWith(
          _$RecipeLoadingImpl value, $Res Function(_$RecipeLoadingImpl) then) =
      __$$RecipeLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$$RecipeLoadingImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeLoadingImpl>
    implements _$$RecipeLoadingImplCopyWith<$Res> {
  __$$RecipeLoadingImplCopyWithImpl(
      _$RecipeLoadingImpl _value, $Res Function(_$RecipeLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$RecipeLoadingImpl(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$RecipeLoadingImpl
    with DiagnosticableTreeMixin
    implements RecipeLoading {
  const _$RecipeLoadingImpl(final List<Recipe> recipes) : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.recipeLoading(recipes: $recipes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.recipeLoading'))
      ..add(DiagnosticsProperty('recipes', recipes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeLoadingImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeLoadingImplCopyWith<_$RecipeLoadingImpl> get copyWith =>
      __$$RecipeLoadingImplCopyWithImpl<_$RecipeLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return recipeLoading(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return recipeLoading?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeLoading != null) {
      return recipeLoading(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return recipeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return recipeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeLoading != null) {
      return recipeLoading(this);
    }
    return orElse();
  }
}

abstract class RecipeLoading implements RecipeState {
  const factory RecipeLoading(final List<Recipe> recipes) = _$RecipeLoadingImpl;

  List<Recipe> get recipes;
  @JsonKey(ignore: true)
  _$$RecipeLoadingImplCopyWith<_$RecipeLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeAddedImplCopyWith<$Res> {
  factory _$$RecipeAddedImplCopyWith(
          _$RecipeAddedImpl value, $Res Function(_$RecipeAddedImpl) then) =
      __$$RecipeAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeAddedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeAddedImpl>
    implements _$$RecipeAddedImplCopyWith<$Res> {
  __$$RecipeAddedImplCopyWithImpl(
      _$RecipeAddedImpl _value, $Res Function(_$RecipeAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeAddedImpl with DiagnosticableTreeMixin implements RecipeAdded {
  const _$RecipeAddedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.recipeAdded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecipeState.recipeAdded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return recipeAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return recipeAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeAdded != null) {
      return recipeAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return recipeAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return recipeAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeAdded != null) {
      return recipeAdded(this);
    }
    return orElse();
  }
}

abstract class RecipeAdded implements RecipeState {
  const factory RecipeAdded() = _$RecipeAddedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RecipeState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentsLoadedImplCopyWith<$Res> {
  factory _$$CommentsLoadedImplCopyWith(_$CommentsLoadedImpl value,
          $Res Function(_$CommentsLoadedImpl) then) =
      __$$CommentsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$CommentsLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$CommentsLoadedImpl>
    implements _$$CommentsLoadedImplCopyWith<$Res> {
  __$$CommentsLoadedImplCopyWithImpl(
      _$CommentsLoadedImpl _value, $Res Function(_$CommentsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentsLoadedImpl(
      null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$CommentsLoadedImpl
    with DiagnosticableTreeMixin
    implements CommentsLoaded {
  const _$CommentsLoadedImpl(final List<Comment> comments)
      : _comments = comments;

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.commentsLoaded(comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.commentsLoaded'))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsLoadedImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsLoadedImplCopyWith<_$CommentsLoadedImpl> get copyWith =>
      __$$CommentsLoadedImplCopyWithImpl<_$CommentsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return commentsLoaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return commentsLoaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (commentsLoaded != null) {
      return commentsLoaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return commentsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return commentsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (commentsLoaded != null) {
      return commentsLoaded(this);
    }
    return orElse();
  }
}

abstract class CommentsLoaded implements RecipeState {
  const factory CommentsLoaded(final List<Comment> comments) =
      _$CommentsLoadedImpl;

  List<Comment> get comments;
  @JsonKey(ignore: true)
  _$$CommentsLoadedImplCopyWith<_$CommentsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IngredientsLoadedImplCopyWith<$Res> {
  factory _$$IngredientsLoadedImplCopyWith(_$IngredientsLoadedImpl value,
          $Res Function(_$IngredientsLoadedImpl) then) =
      __$$IngredientsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ingredient> ingredients});
}

/// @nodoc
class __$$IngredientsLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$IngredientsLoadedImpl>
    implements _$$IngredientsLoadedImplCopyWith<$Res> {
  __$$IngredientsLoadedImplCopyWithImpl(_$IngredientsLoadedImpl _value,
      $Res Function(_$IngredientsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$IngredientsLoadedImpl(
      null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc

class _$IngredientsLoadedImpl
    with DiagnosticableTreeMixin
    implements IngredientsLoaded {
  const _$IngredientsLoadedImpl(final List<Ingredient> ingredients)
      : _ingredients = ingredients;

  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.ingredientsLoaded(ingredients: $ingredients)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.ingredientsLoaded'))
      ..add(DiagnosticsProperty('ingredients', ingredients));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsLoadedImplCopyWith<_$IngredientsLoadedImpl> get copyWith =>
      __$$IngredientsLoadedImplCopyWithImpl<_$IngredientsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return ingredientsLoaded(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return ingredientsLoaded?.call(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (ingredientsLoaded != null) {
      return ingredientsLoaded(ingredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return ingredientsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return ingredientsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (ingredientsLoaded != null) {
      return ingredientsLoaded(this);
    }
    return orElse();
  }
}

abstract class IngredientsLoaded implements RecipeState {
  const factory IngredientsLoaded(final List<Ingredient> ingredients) =
      _$IngredientsLoadedImpl;

  List<Ingredient> get ingredients;
  @JsonKey(ignore: true)
  _$$IngredientsLoadedImplCopyWith<_$IngredientsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IngredientAddedImplCopyWith<$Res> {
  factory _$$IngredientAddedImplCopyWith(_$IngredientAddedImpl value,
          $Res Function(_$IngredientAddedImpl) then) =
      __$$IngredientAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$IngredientAddedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$IngredientAddedImpl>
    implements _$$IngredientAddedImplCopyWith<$Res> {
  __$$IngredientAddedImplCopyWithImpl(
      _$IngredientAddedImpl _value, $Res Function(_$IngredientAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$IngredientAddedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IngredientAddedImpl
    with DiagnosticableTreeMixin
    implements IngredientAdded {
  const _$IngredientAddedImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.ingredientAddedLoaded(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.ingredientAddedLoaded'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientAddedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientAddedImplCopyWith<_$IngredientAddedImpl> get copyWith =>
      __$$IngredientAddedImplCopyWithImpl<_$IngredientAddedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return ingredientAddedLoaded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return ingredientAddedLoaded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (ingredientAddedLoaded != null) {
      return ingredientAddedLoaded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return ingredientAddedLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return ingredientAddedLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (ingredientAddedLoaded != null) {
      return ingredientAddedLoaded(this);
    }
    return orElse();
  }
}

abstract class IngredientAdded implements RecipeState {
  const factory IngredientAdded(final String message) = _$IngredientAddedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$IngredientAddedImplCopyWith<_$IngredientAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasurementsLoadedImplCopyWith<$Res> {
  factory _$$MeasurementsLoadedImplCopyWith(_$MeasurementsLoadedImpl value,
          $Res Function(_$MeasurementsLoadedImpl) then) =
      __$$MeasurementsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Measurement> measurements});
}

/// @nodoc
class __$$MeasurementsLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$MeasurementsLoadedImpl>
    implements _$$MeasurementsLoadedImplCopyWith<$Res> {
  __$$MeasurementsLoadedImplCopyWithImpl(_$MeasurementsLoadedImpl _value,
      $Res Function(_$MeasurementsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurements = null,
  }) {
    return _then(_$MeasurementsLoadedImpl(
      null == measurements
          ? _value._measurements
          : measurements // ignore: cast_nullable_to_non_nullable
              as List<Measurement>,
    ));
  }
}

/// @nodoc

class _$MeasurementsLoadedImpl
    with DiagnosticableTreeMixin
    implements MeasurementsLoaded {
  const _$MeasurementsLoadedImpl(final List<Measurement> measurements)
      : _measurements = measurements;

  final List<Measurement> _measurements;
  @override
  List<Measurement> get measurements {
    if (_measurements is EqualUnmodifiableListView) return _measurements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measurements);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.measurementsLoaded(measurements: $measurements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.measurementsLoaded'))
      ..add(DiagnosticsProperty('measurements', measurements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._measurements, _measurements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_measurements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementsLoadedImplCopyWith<_$MeasurementsLoadedImpl> get copyWith =>
      __$$MeasurementsLoadedImplCopyWithImpl<_$MeasurementsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return measurementsLoaded(measurements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return measurementsLoaded?.call(measurements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (measurementsLoaded != null) {
      return measurementsLoaded(measurements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return measurementsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return measurementsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (measurementsLoaded != null) {
      return measurementsLoaded(this);
    }
    return orElse();
  }
}

abstract class MeasurementsLoaded implements RecipeState {
  const factory MeasurementsLoaded(final List<Measurement> measurements) =
      _$MeasurementsLoadedImpl;

  List<Measurement> get measurements;
  @JsonKey(ignore: true)
  _$$MeasurementsLoadedImplCopyWith<_$MeasurementsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesLoadedImplCopyWith<$Res> {
  factory _$$CategoriesLoadedImplCopyWith(_$CategoriesLoadedImpl value,
          $Res Function(_$CategoriesLoadedImpl) then) =
      __$$CategoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Categories> categories});
}

/// @nodoc
class __$$CategoriesLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$CategoriesLoadedImpl>
    implements _$$CategoriesLoadedImplCopyWith<$Res> {
  __$$CategoriesLoadedImplCopyWithImpl(_$CategoriesLoadedImpl _value,
      $Res Function(_$CategoriesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesLoadedImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>,
    ));
  }
}

/// @nodoc

class _$CategoriesLoadedImpl
    with DiagnosticableTreeMixin
    implements CategoriesLoaded {
  const _$CategoriesLoadedImpl(final List<Categories> categories)
      : _categories = categories;

  final List<Categories> _categories;
  @override
  List<Categories> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.categoriesLoaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.categoriesLoaded'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesLoadedImplCopyWith<_$CategoriesLoadedImpl> get copyWith =>
      __$$CategoriesLoadedImplCopyWithImpl<_$CategoriesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return categoriesLoaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return categoriesLoaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return categoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return categoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoaded implements RecipeState {
  const factory CategoriesLoaded(final List<Categories> categories) =
      _$CategoriesLoadedImpl;

  List<Categories> get categories;
  @JsonKey(ignore: true)
  _$$CategoriesLoadedImplCopyWith<_$CategoriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeDetailLoadedImplCopyWith<$Res> {
  factory _$$RecipeDetailLoadedImplCopyWith(_$RecipeDetailLoadedImpl value,
          $Res Function(_$RecipeDetailLoadedImpl) then) =
      __$$RecipeDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Recipe recipe,
      List<Map<String, dynamic>> ingredients,
      List<Map<String, dynamic>> steps});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$RecipeDetailLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeDetailLoadedImpl>
    implements _$$RecipeDetailLoadedImplCopyWith<$Res> {
  __$$RecipeDetailLoadedImplCopyWithImpl(_$RecipeDetailLoadedImpl _value,
      $Res Function(_$RecipeDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? ingredients = null,
    Object? steps = null,
  }) {
    return _then(_$RecipeDetailLoadedImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$RecipeDetailLoadedImpl
    with DiagnosticableTreeMixin
    implements RecipeDetailLoaded {
  const _$RecipeDetailLoadedImpl(
      this.recipe,
      final List<Map<String, dynamic>> ingredients,
      final List<Map<String, dynamic>> steps)
      : _ingredients = ingredients,
        _steps = steps;

  @override
  final Recipe recipe;
  final List<Map<String, dynamic>> _ingredients;
  @override
  List<Map<String, dynamic>> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Map<String, dynamic>> _steps;
  @override
  List<Map<String, dynamic>> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.recipeDetailLoaded(recipe: $recipe, ingredients: $ingredients, steps: $steps)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.recipeDetailLoaded'))
      ..add(DiagnosticsProperty('recipe', recipe))
      ..add(DiagnosticsProperty('ingredients', ingredients))
      ..add(DiagnosticsProperty('steps', steps));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailLoadedImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipe,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailLoadedImplCopyWith<_$RecipeDetailLoadedImpl> get copyWith =>
      __$$RecipeDetailLoadedImplCopyWithImpl<_$RecipeDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return recipeDetailLoaded(recipe, ingredients, steps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return recipeDetailLoaded?.call(recipe, ingredients, steps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeDetailLoaded != null) {
      return recipeDetailLoaded(recipe, ingredients, steps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return recipeDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return recipeDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeDetailLoaded != null) {
      return recipeDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class RecipeDetailLoaded implements RecipeState {
  const factory RecipeDetailLoaded(
      final Recipe recipe,
      final List<Map<String, dynamic>> ingredients,
      final List<Map<String, dynamic>> steps) = _$RecipeDetailLoadedImpl;

  Recipe get recipe;
  List<Map<String, dynamic>> get ingredients;
  List<Map<String, dynamic>> get steps;
  @JsonKey(ignore: true)
  _$$RecipeDetailLoadedImplCopyWith<_$RecipeDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeCollectionsLoadedImplCopyWith<$Res> {
  factory _$$RecipeCollectionsLoadedImplCopyWith(
          _$RecipeCollectionsLoadedImpl value,
          $Res Function(_$RecipeCollectionsLoadedImpl) then) =
      __$$RecipeCollectionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeCollection> collections});
}

/// @nodoc
class __$$RecipeCollectionsLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeCollectionsLoadedImpl>
    implements _$$RecipeCollectionsLoadedImplCopyWith<$Res> {
  __$$RecipeCollectionsLoadedImplCopyWithImpl(
      _$RecipeCollectionsLoadedImpl _value,
      $Res Function(_$RecipeCollectionsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
  }) {
    return _then(_$RecipeCollectionsLoadedImpl(
      null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<RecipeCollection>,
    ));
  }
}

/// @nodoc

class _$RecipeCollectionsLoadedImpl
    with DiagnosticableTreeMixin
    implements RecipeCollectionsLoaded {
  const _$RecipeCollectionsLoadedImpl(final List<RecipeCollection> collections)
      : _collections = collections;

  final List<RecipeCollection> _collections;
  @override
  List<RecipeCollection> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeState.recipeCollectionsLoaded(collections: $collections)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeState.recipeCollectionsLoaded'))
      ..add(DiagnosticsProperty('collections', collections));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCollectionsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCollectionsLoadedImplCopyWith<_$RecipeCollectionsLoadedImpl>
      get copyWith => __$$RecipeCollectionsLoadedImplCopyWithImpl<
          _$RecipeCollectionsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) recipeLoading,
    required TResult Function() recipeAdded,
    required TResult Function(String message) error,
    required TResult Function(List<Comment> comments) commentsLoaded,
    required TResult Function(List<Ingredient> ingredients) ingredientsLoaded,
    required TResult Function(String message) ingredientAddedLoaded,
    required TResult Function(List<Measurement> measurements)
        measurementsLoaded,
    required TResult Function(List<Categories> categories) categoriesLoaded,
    required TResult Function(
            Recipe recipe,
            List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)
        recipeDetailLoaded,
    required TResult Function(List<RecipeCollection> collections)
        recipeCollectionsLoaded,
  }) {
    return recipeCollectionsLoaded(collections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(List<Recipe> recipes)? recipeLoading,
    TResult? Function()? recipeAdded,
    TResult? Function(String message)? error,
    TResult? Function(List<Comment> comments)? commentsLoaded,
    TResult? Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult? Function(String message)? ingredientAddedLoaded,
    TResult? Function(List<Measurement> measurements)? measurementsLoaded,
    TResult? Function(List<Categories> categories)? categoriesLoaded,
    TResult? Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult? Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
  }) {
    return recipeCollectionsLoaded?.call(collections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? recipeLoading,
    TResult Function()? recipeAdded,
    TResult Function(String message)? error,
    TResult Function(List<Comment> comments)? commentsLoaded,
    TResult Function(List<Ingredient> ingredients)? ingredientsLoaded,
    TResult Function(String message)? ingredientAddedLoaded,
    TResult Function(List<Measurement> measurements)? measurementsLoaded,
    TResult Function(List<Categories> categories)? categoriesLoaded,
    TResult Function(Recipe recipe, List<Map<String, dynamic>> ingredients,
            List<Map<String, dynamic>> steps)?
        recipeDetailLoaded,
    TResult Function(List<RecipeCollection> collections)?
        recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeCollectionsLoaded != null) {
      return recipeCollectionsLoaded(collections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipe value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(RecipeLoading value) recipeLoading,
    required TResult Function(RecipeAdded value) recipeAdded,
    required TResult Function(Error value) error,
    required TResult Function(CommentsLoaded value) commentsLoaded,
    required TResult Function(IngredientsLoaded value) ingredientsLoaded,
    required TResult Function(IngredientAdded value) ingredientAddedLoaded,
    required TResult Function(MeasurementsLoaded value) measurementsLoaded,
    required TResult Function(CategoriesLoaded value) categoriesLoaded,
    required TResult Function(RecipeDetailLoaded value) recipeDetailLoaded,
    required TResult Function(RecipeCollectionsLoaded value)
        recipeCollectionsLoaded,
  }) {
    return recipeCollectionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRecipe value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(RecipeLoading value)? recipeLoading,
    TResult? Function(RecipeAdded value)? recipeAdded,
    TResult? Function(Error value)? error,
    TResult? Function(CommentsLoaded value)? commentsLoaded,
    TResult? Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult? Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult? Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult? Function(CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult? Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
  }) {
    return recipeCollectionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipe value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(RecipeLoading value)? recipeLoading,
    TResult Function(RecipeAdded value)? recipeAdded,
    TResult Function(Error value)? error,
    TResult Function(CommentsLoaded value)? commentsLoaded,
    TResult Function(IngredientsLoaded value)? ingredientsLoaded,
    TResult Function(IngredientAdded value)? ingredientAddedLoaded,
    TResult Function(MeasurementsLoaded value)? measurementsLoaded,
    TResult Function(CategoriesLoaded value)? categoriesLoaded,
    TResult Function(RecipeDetailLoaded value)? recipeDetailLoaded,
    TResult Function(RecipeCollectionsLoaded value)? recipeCollectionsLoaded,
    required TResult orElse(),
  }) {
    if (recipeCollectionsLoaded != null) {
      return recipeCollectionsLoaded(this);
    }
    return orElse();
  }
}

abstract class RecipeCollectionsLoaded implements RecipeState {
  const factory RecipeCollectionsLoaded(
      final List<RecipeCollection> collections) = _$RecipeCollectionsLoadedImpl;

  List<RecipeCollection> get collections;
  @JsonKey(ignore: true)
  _$$RecipeCollectionsLoadedImplCopyWith<_$RecipeCollectionsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
