// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  String get recipeId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get cookingTime => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  List<Step> get steps => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {String recipeId,
      String userId,
      String image,
      String title,
      String description,
      int cookingTime,
      Category category,
      List<Ingredient> ingredients,
      List<Step> steps,
      Rating rating,
      List<Comment> comments});

  $CategoryCopyWith<$Res> get category;
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? userId = null,
    Object? image = null,
    Object? title = null,
    Object? description = null,
    Object? cookingTime = null,
    Object? category = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? rating = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cookingTime: null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      String userId,
      String image,
      String title,
      String description,
      int cookingTime,
      Category category,
      List<Ingredient> ingredients,
      List<Step> steps,
      Rating rating,
      List<Comment> comments});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? userId = null,
    Object? image = null,
    Object? title = null,
    Object? description = null,
    Object? cookingTime = null,
    Object? category = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? rating = null,
    Object? comments = null,
  }) {
    return _then(_$RecipeImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cookingTime: null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  const _$RecipeImpl(
      {required this.recipeId,
      required this.userId,
      required this.image,
      required this.title,
      required this.description,
      required this.cookingTime,
      required this.category,
      required final List<Ingredient> ingredients,
      required final List<Step> steps,
      required this.rating,
      required final List<Comment> comments})
      : _ingredients = ingredients,
        _steps = steps,
        _comments = comments;

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  final String recipeId;
  @override
  final String userId;
  @override
  final String image;
  @override
  final String title;
  @override
  final String description;
  @override
  final int cookingTime;
  @override
  final Category category;
  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Step> _steps;
  @override
  List<Step> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final Rating rating;
  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'Recipe(recipeId: $recipeId, userId: $userId, image: $image, title: $title, description: $description, cookingTime: $cookingTime, category: $category, ingredients: $ingredients, steps: $steps, rating: $rating, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeId,
      userId,
      image,
      title,
      description,
      cookingTime,
      category,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_steps),
      rating,
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required final String recipeId,
      required final String userId,
      required final String image,
      required final String title,
      required final String description,
      required final int cookingTime,
      required final Category category,
      required final List<Ingredient> ingredients,
      required final List<Step> steps,
      required final Rating rating,
      required final List<Comment> comments}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  String get recipeId;
  @override
  String get userId;
  @override
  String get image;
  @override
  String get title;
  @override
  String get description;
  @override
  int get cookingTime;
  @override
  Category get category;
  @override
  List<Ingredient> get ingredients;
  @override
  List<Step> get steps;
  @override
  Rating get rating;
  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String categoryId, String title});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId, String title});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? title = null,
  }) {
    return _then(_$CategoryImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({required this.categoryId, required this.title});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String categoryId;
  @override
  final String title;

  @override
  String toString() {
    return 'Category(categoryId: $categoryId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String categoryId,
      required final String title}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get categoryId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  String get ingredientId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call({String ingredientId, String title});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientImplCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$IngredientImplCopyWith(
          _$IngredientImpl value, $Res Function(_$IngredientImpl) then) =
      __$$IngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ingredientId, String title});
}

/// @nodoc
class __$$IngredientImplCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$IngredientImpl>
    implements _$$IngredientImplCopyWith<$Res> {
  __$$IngredientImplCopyWithImpl(
      _$IngredientImpl _value, $Res Function(_$IngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientId = null,
    Object? title = null,
  }) {
    return _then(_$IngredientImpl(
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientImpl implements _Ingredient {
  const _$IngredientImpl({required this.ingredientId, required this.title});

  factory _$IngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientImplFromJson(json);

  @override
  final String ingredientId;
  @override
  final String title;

  @override
  String toString() {
    return 'Ingredient(ingredientId: $ingredientId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientImpl &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ingredientId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      __$$IngredientImplCopyWithImpl<_$IngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientImplToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required final String ingredientId,
      required final String title}) = _$IngredientImpl;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$IngredientImpl.fromJson;

  @override
  String get ingredientId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Measurement _$MeasurementFromJson(Map<String, dynamic> json) {
  return _Measurement.fromJson(json);
}

/// @nodoc
mixin _$Measurement {
  String get measurementId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementCopyWith<Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementCopyWith<$Res> {
  factory $MeasurementCopyWith(
          Measurement value, $Res Function(Measurement) then) =
      _$MeasurementCopyWithImpl<$Res, Measurement>;
  @useResult
  $Res call({String measurementId, String title});
}

/// @nodoc
class _$MeasurementCopyWithImpl<$Res, $Val extends Measurement>
    implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      measurementId: null == measurementId
          ? _value.measurementId
          : measurementId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasurementImplCopyWith<$Res>
    implements $MeasurementCopyWith<$Res> {
  factory _$$MeasurementImplCopyWith(
          _$MeasurementImpl value, $Res Function(_$MeasurementImpl) then) =
      __$$MeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String measurementId, String title});
}

/// @nodoc
class __$$MeasurementImplCopyWithImpl<$Res>
    extends _$MeasurementCopyWithImpl<$Res, _$MeasurementImpl>
    implements _$$MeasurementImplCopyWith<$Res> {
  __$$MeasurementImplCopyWithImpl(
      _$MeasurementImpl _value, $Res Function(_$MeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementId = null,
    Object? title = null,
  }) {
    return _then(_$MeasurementImpl(
      measurementId: null == measurementId
          ? _value.measurementId
          : measurementId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementImpl implements _Measurement {
  const _$MeasurementImpl({required this.measurementId, required this.title});

  factory _$MeasurementImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementImplFromJson(json);

  @override
  final String measurementId;
  @override
  final String title;

  @override
  String toString() {
    return 'Measurement(measurementId: $measurementId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementImpl &&
            (identical(other.measurementId, measurementId) ||
                other.measurementId == measurementId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, measurementId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementImplCopyWith<_$MeasurementImpl> get copyWith =>
      __$$MeasurementImplCopyWithImpl<_$MeasurementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementImplToJson(
      this,
    );
  }
}

abstract class _Measurement implements Measurement {
  const factory _Measurement(
      {required final String measurementId,
      required final String title}) = _$MeasurementImpl;

  factory _Measurement.fromJson(Map<String, dynamic> json) =
      _$MeasurementImpl.fromJson;

  @override
  String get measurementId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementImplCopyWith<_$MeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientWithQuantity _$IngredientWithQuantityFromJson(
    Map<String, dynamic> json) {
  return _IngredientWithQuantity.fromJson(json);
}

/// @nodoc
mixin _$IngredientWithQuantity {
  Ingredient get ingredient => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get measurementId => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientWithQuantityCopyWith<IngredientWithQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientWithQuantityCopyWith<$Res> {
  factory $IngredientWithQuantityCopyWith(IngredientWithQuantity value,
          $Res Function(IngredientWithQuantity) then) =
      _$IngredientWithQuantityCopyWithImpl<$Res, IngredientWithQuantity>;
  @useResult
  $Res call(
      {Ingredient ingredient,
      String quantity,
      String measurementId,
      String recipeId});

  $IngredientCopyWith<$Res> get ingredient;
}

/// @nodoc
class _$IngredientWithQuantityCopyWithImpl<$Res,
        $Val extends IngredientWithQuantity>
    implements $IngredientWithQuantityCopyWith<$Res> {
  _$IngredientWithQuantityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? quantity = null,
    Object? measurementId = null,
    Object? recipeId = null,
  }) {
    return _then(_value.copyWith(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      measurementId: null == measurementId
          ? _value.measurementId
          : measurementId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<$Res> get ingredient {
    return $IngredientCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientWithQuantityImplCopyWith<$Res>
    implements $IngredientWithQuantityCopyWith<$Res> {
  factory _$$IngredientWithQuantityImplCopyWith(
          _$IngredientWithQuantityImpl value,
          $Res Function(_$IngredientWithQuantityImpl) then) =
      __$$IngredientWithQuantityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ingredient ingredient,
      String quantity,
      String measurementId,
      String recipeId});

  @override
  $IngredientCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$IngredientWithQuantityImplCopyWithImpl<$Res>
    extends _$IngredientWithQuantityCopyWithImpl<$Res,
        _$IngredientWithQuantityImpl>
    implements _$$IngredientWithQuantityImplCopyWith<$Res> {
  __$$IngredientWithQuantityImplCopyWithImpl(
      _$IngredientWithQuantityImpl _value,
      $Res Function(_$IngredientWithQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? quantity = null,
    Object? measurementId = null,
    Object? recipeId = null,
  }) {
    return _then(_$IngredientWithQuantityImpl(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      measurementId: null == measurementId
          ? _value.measurementId
          : measurementId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientWithQuantityImpl implements _IngredientWithQuantity {
  const _$IngredientWithQuantityImpl(
      {required this.ingredient,
      required this.quantity,
      required this.measurementId,
      required this.recipeId});

  factory _$IngredientWithQuantityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientWithQuantityImplFromJson(json);

  @override
  final Ingredient ingredient;
  @override
  final String quantity;
  @override
  final String measurementId;
  @override
  final String recipeId;

  @override
  String toString() {
    return 'IngredientWithQuantity(ingredient: $ingredient, quantity: $quantity, measurementId: $measurementId, recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientWithQuantityImpl &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.measurementId, measurementId) ||
                other.measurementId == measurementId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ingredient, quantity, measurementId, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientWithQuantityImplCopyWith<_$IngredientWithQuantityImpl>
      get copyWith => __$$IngredientWithQuantityImplCopyWithImpl<
          _$IngredientWithQuantityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientWithQuantityImplToJson(
      this,
    );
  }
}

abstract class _IngredientWithQuantity implements IngredientWithQuantity {
  const factory _IngredientWithQuantity(
      {required final Ingredient ingredient,
      required final String quantity,
      required final String measurementId,
      required final String recipeId}) = _$IngredientWithQuantityImpl;

  factory _IngredientWithQuantity.fromJson(Map<String, dynamic> json) =
      _$IngredientWithQuantityImpl.fromJson;

  @override
  Ingredient get ingredient;
  @override
  String get quantity;
  @override
  String get measurementId;
  @override
  String get recipeId;
  @override
  @JsonKey(ignore: true)
  _$$IngredientWithQuantityImplCopyWith<_$IngredientWithQuantityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Step _$StepFromJson(Map<String, dynamic> json) {
  return _Step.fromJson(json);
}

/// @nodoc
mixin _$Step {
  String get stepId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res, Step>;
  @useResult
  $Res call({String stepId, String description, String image, String recipeId});
}

/// @nodoc
class _$StepCopyWithImpl<$Res, $Val extends Step>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepId = null,
    Object? description = null,
    Object? image = null,
    Object? recipeId = null,
  }) {
    return _then(_value.copyWith(
      stepId: null == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepImplCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$$StepImplCopyWith(
          _$StepImpl value, $Res Function(_$StepImpl) then) =
      __$$StepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stepId, String description, String image, String recipeId});
}

/// @nodoc
class __$$StepImplCopyWithImpl<$Res>
    extends _$StepCopyWithImpl<$Res, _$StepImpl>
    implements _$$StepImplCopyWith<$Res> {
  __$$StepImplCopyWithImpl(_$StepImpl _value, $Res Function(_$StepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepId = null,
    Object? description = null,
    Object? image = null,
    Object? recipeId = null,
  }) {
    return _then(_$StepImpl(
      stepId: null == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepImpl implements _Step {
  const _$StepImpl(
      {required this.stepId,
      required this.description,
      required this.image,
      required this.recipeId});

  factory _$StepImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepImplFromJson(json);

  @override
  final String stepId;
  @override
  final String description;
  @override
  final String image;
  @override
  final String recipeId;

  @override
  String toString() {
    return 'Step(stepId: $stepId, description: $description, image: $image, recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepImpl &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stepId, description, image, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      __$$StepImplCopyWithImpl<_$StepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepImplToJson(
      this,
    );
  }
}

abstract class _Step implements Step {
  const factory _Step(
      {required final String stepId,
      required final String description,
      required final String image,
      required final String recipeId}) = _$StepImpl;

  factory _Step.fromJson(Map<String, dynamic> json) = _$StepImpl.fromJson;

  @override
  String get stepId;
  @override
  String get description;
  @override
  String get image;
  @override
  String get recipeId;
  @override
  @JsonKey(ignore: true)
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get commentId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String commentId,
      String userId,
      String comment,
      DateTime time,
      String recipeId});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? userId = null,
    Object? comment = null,
    Object? time = null,
    Object? recipeId = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String commentId,
      String userId,
      String comment,
      DateTime time,
      String recipeId});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? userId = null,
    Object? comment = null,
    Object? time = null,
    Object? recipeId = null,
  }) {
    return _then(_$CommentImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {required this.commentId,
      required this.userId,
      required this.comment,
      required this.time,
      required this.recipeId});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final String commentId;
  @override
  final String userId;
  @override
  final String comment;
  @override
  final DateTime time;
  @override
  final String recipeId;

  @override
  String toString() {
    return 'Comment(commentId: $commentId, userId: $userId, comment: $comment, time: $time, recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, commentId, userId, comment, time, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final String commentId,
      required final String userId,
      required final String comment,
      required final DateTime time,
      required final String recipeId}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get commentId;
  @override
  String get userId;
  @override
  String get comment;
  @override
  DateTime get time;
  @override
  String get recipeId;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String get ratingId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get overallRating => throw _privateConstructorUsedError;
  int get totalRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {String ratingId, String userId, double overallRating, int totalRating});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingId = null,
    Object? userId = null,
    Object? overallRating = null,
    Object? totalRating = null,
  }) {
    return _then(_value.copyWith(
      ratingId: null == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      overallRating: null == overallRating
          ? _value.overallRating
          : overallRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ratingId, String userId, double overallRating, int totalRating});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingId = null,
    Object? userId = null,
    Object? overallRating = null,
    Object? totalRating = null,
  }) {
    return _then(_$RatingImpl(
      ratingId: null == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      overallRating: null == overallRating
          ? _value.overallRating
          : overallRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl(
      {required this.ratingId,
      required this.userId,
      required this.overallRating,
      required this.totalRating});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final String ratingId;
  @override
  final String userId;
  @override
  final double overallRating;
  @override
  final int totalRating;

  @override
  String toString() {
    return 'Rating(ratingId: $ratingId, userId: $userId, overallRating: $overallRating, totalRating: $totalRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.ratingId, ratingId) ||
                other.ratingId == ratingId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.overallRating, overallRating) ||
                other.overallRating == overallRating) &&
            (identical(other.totalRating, totalRating) ||
                other.totalRating == totalRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ratingId, userId, overallRating, totalRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {required final String ratingId,
      required final String userId,
      required final double overallRating,
      required final int totalRating}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  String get ratingId;
  @override
  String get userId;
  @override
  double get overallRating;
  @override
  int get totalRating;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoriteRecipe _$FavoriteRecipeFromJson(Map<String, dynamic> json) {
  return _FavoriteRecipe.fromJson(json);
}

/// @nodoc
mixin _$FavoriteRecipe {
  String get favoriteRecipeId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteRecipeCopyWith<FavoriteRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRecipeCopyWith<$Res> {
  factory $FavoriteRecipeCopyWith(
          FavoriteRecipe value, $Res Function(FavoriteRecipe) then) =
      _$FavoriteRecipeCopyWithImpl<$Res, FavoriteRecipe>;
  @useResult
  $Res call({String favoriteRecipeId, String userId, String recipeId});
}

/// @nodoc
class _$FavoriteRecipeCopyWithImpl<$Res, $Val extends FavoriteRecipe>
    implements $FavoriteRecipeCopyWith<$Res> {
  _$FavoriteRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteRecipeId = null,
    Object? userId = null,
    Object? recipeId = null,
  }) {
    return _then(_value.copyWith(
      favoriteRecipeId: null == favoriteRecipeId
          ? _value.favoriteRecipeId
          : favoriteRecipeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteRecipeImplCopyWith<$Res>
    implements $FavoriteRecipeCopyWith<$Res> {
  factory _$$FavoriteRecipeImplCopyWith(_$FavoriteRecipeImpl value,
          $Res Function(_$FavoriteRecipeImpl) then) =
      __$$FavoriteRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String favoriteRecipeId, String userId, String recipeId});
}

/// @nodoc
class __$$FavoriteRecipeImplCopyWithImpl<$Res>
    extends _$FavoriteRecipeCopyWithImpl<$Res, _$FavoriteRecipeImpl>
    implements _$$FavoriteRecipeImplCopyWith<$Res> {
  __$$FavoriteRecipeImplCopyWithImpl(
      _$FavoriteRecipeImpl _value, $Res Function(_$FavoriteRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteRecipeId = null,
    Object? userId = null,
    Object? recipeId = null,
  }) {
    return _then(_$FavoriteRecipeImpl(
      favoriteRecipeId: null == favoriteRecipeId
          ? _value.favoriteRecipeId
          : favoriteRecipeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteRecipeImpl implements _FavoriteRecipe {
  const _$FavoriteRecipeImpl(
      {required this.favoriteRecipeId,
      required this.userId,
      required this.recipeId});

  factory _$FavoriteRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteRecipeImplFromJson(json);

  @override
  final String favoriteRecipeId;
  @override
  final String userId;
  @override
  final String recipeId;

  @override
  String toString() {
    return 'FavoriteRecipe(favoriteRecipeId: $favoriteRecipeId, userId: $userId, recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteRecipeImpl &&
            (identical(other.favoriteRecipeId, favoriteRecipeId) ||
                other.favoriteRecipeId == favoriteRecipeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, favoriteRecipeId, userId, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteRecipeImplCopyWith<_$FavoriteRecipeImpl> get copyWith =>
      __$$FavoriteRecipeImplCopyWithImpl<_$FavoriteRecipeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteRecipeImplToJson(
      this,
    );
  }
}

abstract class _FavoriteRecipe implements FavoriteRecipe {
  const factory _FavoriteRecipe(
      {required final String favoriteRecipeId,
      required final String userId,
      required final String recipeId}) = _$FavoriteRecipeImpl;

  factory _FavoriteRecipe.fromJson(Map<String, dynamic> json) =
      _$FavoriteRecipeImpl.fromJson;

  @override
  String get favoriteRecipeId;
  @override
  String get userId;
  @override
  String get recipeId;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteRecipeImplCopyWith<_$FavoriteRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipeCollection _$RecipeCollectionFromJson(Map<String, dynamic> json) {
  return _RecipeCollection.fromJson(json);
}

/// @nodoc
mixin _$RecipeCollection {
  String get recipeCollectionId => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;
  String get recipeCollectionImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCollectionCopyWith<RecipeCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCollectionCopyWith<$Res> {
  factory $RecipeCollectionCopyWith(
          RecipeCollection value, $Res Function(RecipeCollection) then) =
      _$RecipeCollectionCopyWithImpl<$Res, RecipeCollection>;
  @useResult
  $Res call(
      {String recipeCollectionId,
      String recipeId,
      String recipeCollectionImage,
      String title,
      String description});
}

/// @nodoc
class _$RecipeCollectionCopyWithImpl<$Res, $Val extends RecipeCollection>
    implements $RecipeCollectionCopyWith<$Res> {
  _$RecipeCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeCollectionId = null,
    Object? recipeId = null,
    Object? recipeCollectionImage = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      recipeCollectionId: null == recipeCollectionId
          ? _value.recipeCollectionId
          : recipeCollectionId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeCollectionImage: null == recipeCollectionImage
          ? _value.recipeCollectionImage
          : recipeCollectionImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeCollectionImplCopyWith<$Res>
    implements $RecipeCollectionCopyWith<$Res> {
  factory _$$RecipeCollectionImplCopyWith(_$RecipeCollectionImpl value,
          $Res Function(_$RecipeCollectionImpl) then) =
      __$$RecipeCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeCollectionId,
      String recipeId,
      String recipeCollectionImage,
      String title,
      String description});
}

/// @nodoc
class __$$RecipeCollectionImplCopyWithImpl<$Res>
    extends _$RecipeCollectionCopyWithImpl<$Res, _$RecipeCollectionImpl>
    implements _$$RecipeCollectionImplCopyWith<$Res> {
  __$$RecipeCollectionImplCopyWithImpl(_$RecipeCollectionImpl _value,
      $Res Function(_$RecipeCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeCollectionId = null,
    Object? recipeId = null,
    Object? recipeCollectionImage = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$RecipeCollectionImpl(
      recipeCollectionId: null == recipeCollectionId
          ? _value.recipeCollectionId
          : recipeCollectionId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeCollectionImage: null == recipeCollectionImage
          ? _value.recipeCollectionImage
          : recipeCollectionImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeCollectionImpl implements _RecipeCollection {
  const _$RecipeCollectionImpl(
      {required this.recipeCollectionId,
      required this.recipeId,
      required this.recipeCollectionImage,
      required this.title,
      required this.description});

  factory _$RecipeCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeCollectionImplFromJson(json);

  @override
  final String recipeCollectionId;
  @override
  final String recipeId;
  @override
  final String recipeCollectionImage;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'RecipeCollection(recipeCollectionId: $recipeCollectionId, recipeId: $recipeId, recipeCollectionImage: $recipeCollectionImage, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCollectionImpl &&
            (identical(other.recipeCollectionId, recipeCollectionId) ||
                other.recipeCollectionId == recipeCollectionId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.recipeCollectionImage, recipeCollectionImage) ||
                other.recipeCollectionImage == recipeCollectionImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipeCollectionId, recipeId,
      recipeCollectionImage, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCollectionImplCopyWith<_$RecipeCollectionImpl> get copyWith =>
      __$$RecipeCollectionImplCopyWithImpl<_$RecipeCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeCollectionImplToJson(
      this,
    );
  }
}

abstract class _RecipeCollection implements RecipeCollection {
  const factory _RecipeCollection(
      {required final String recipeCollectionId,
      required final String recipeId,
      required final String recipeCollectionImage,
      required final String title,
      required final String description}) = _$RecipeCollectionImpl;

  factory _RecipeCollection.fromJson(Map<String, dynamic> json) =
      _$RecipeCollectionImpl.fromJson;

  @override
  String get recipeCollectionId;
  @override
  String get recipeId;
  @override
  String get recipeCollectionImage;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$RecipeCollectionImplCopyWith<_$RecipeCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonalProduct _$SeasonalProductFromJson(Map<String, dynamic> json) {
  return _SeasonalProduct.fromJson(json);
}

/// @nodoc
mixin _$SeasonalProduct {
  String get productId => throw _privateConstructorUsedError;
  String get productIdImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get history => throw _privateConstructorUsedError;
  String get seson => throw _privateConstructorUsedError;
  String get taste => throw _privateConstructorUsedError;
  String get benefitsAndHarms => throw _privateConstructorUsedError;
  String get storage => throw _privateConstructorUsedError;
  String get recommendation => throw _privateConstructorUsedError;
  String get evidence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonalProductCopyWith<SeasonalProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalProductCopyWith<$Res> {
  factory $SeasonalProductCopyWith(
          SeasonalProduct value, $Res Function(SeasonalProduct) then) =
      _$SeasonalProductCopyWithImpl<$Res, SeasonalProduct>;
  @useResult
  $Res call(
      {String productId,
      String productIdImage,
      String title,
      String description,
      String history,
      String seson,
      String taste,
      String benefitsAndHarms,
      String storage,
      String recommendation,
      String evidence});
}

/// @nodoc
class _$SeasonalProductCopyWithImpl<$Res, $Val extends SeasonalProduct>
    implements $SeasonalProductCopyWith<$Res> {
  _$SeasonalProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productIdImage = null,
    Object? title = null,
    Object? description = null,
    Object? history = null,
    Object? seson = null,
    Object? taste = null,
    Object? benefitsAndHarms = null,
    Object? storage = null,
    Object? recommendation = null,
    Object? evidence = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productIdImage: null == productIdImage
          ? _value.productIdImage
          : productIdImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
      seson: null == seson
          ? _value.seson
          : seson // ignore: cast_nullable_to_non_nullable
              as String,
      taste: null == taste
          ? _value.taste
          : taste // ignore: cast_nullable_to_non_nullable
              as String,
      benefitsAndHarms: null == benefitsAndHarms
          ? _value.benefitsAndHarms
          : benefitsAndHarms // ignore: cast_nullable_to_non_nullable
              as String,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as String,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String,
      evidence: null == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonalProductImplCopyWith<$Res>
    implements $SeasonalProductCopyWith<$Res> {
  factory _$$SeasonalProductImplCopyWith(_$SeasonalProductImpl value,
          $Res Function(_$SeasonalProductImpl) then) =
      __$$SeasonalProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productIdImage,
      String title,
      String description,
      String history,
      String seson,
      String taste,
      String benefitsAndHarms,
      String storage,
      String recommendation,
      String evidence});
}

/// @nodoc
class __$$SeasonalProductImplCopyWithImpl<$Res>
    extends _$SeasonalProductCopyWithImpl<$Res, _$SeasonalProductImpl>
    implements _$$SeasonalProductImplCopyWith<$Res> {
  __$$SeasonalProductImplCopyWithImpl(
      _$SeasonalProductImpl _value, $Res Function(_$SeasonalProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productIdImage = null,
    Object? title = null,
    Object? description = null,
    Object? history = null,
    Object? seson = null,
    Object? taste = null,
    Object? benefitsAndHarms = null,
    Object? storage = null,
    Object? recommendation = null,
    Object? evidence = null,
  }) {
    return _then(_$SeasonalProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productIdImage: null == productIdImage
          ? _value.productIdImage
          : productIdImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
      seson: null == seson
          ? _value.seson
          : seson // ignore: cast_nullable_to_non_nullable
              as String,
      taste: null == taste
          ? _value.taste
          : taste // ignore: cast_nullable_to_non_nullable
              as String,
      benefitsAndHarms: null == benefitsAndHarms
          ? _value.benefitsAndHarms
          : benefitsAndHarms // ignore: cast_nullable_to_non_nullable
              as String,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as String,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String,
      evidence: null == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonalProductImpl implements _SeasonalProduct {
  const _$SeasonalProductImpl(
      {required this.productId,
      required this.productIdImage,
      required this.title,
      required this.description,
      required this.history,
      required this.seson,
      required this.taste,
      required this.benefitsAndHarms,
      required this.storage,
      required this.recommendation,
      required this.evidence});

  factory _$SeasonalProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonalProductImplFromJson(json);

  @override
  final String productId;
  @override
  final String productIdImage;
  @override
  final String title;
  @override
  final String description;
  @override
  final String history;
  @override
  final String seson;
  @override
  final String taste;
  @override
  final String benefitsAndHarms;
  @override
  final String storage;
  @override
  final String recommendation;
  @override
  final String evidence;

  @override
  String toString() {
    return 'SeasonalProduct(productId: $productId, productIdImage: $productIdImage, title: $title, description: $description, history: $history, seson: $seson, taste: $taste, benefitsAndHarms: $benefitsAndHarms, storage: $storage, recommendation: $recommendation, evidence: $evidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productIdImage, productIdImage) ||
                other.productIdImage == productIdImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.seson, seson) || other.seson == seson) &&
            (identical(other.taste, taste) || other.taste == taste) &&
            (identical(other.benefitsAndHarms, benefitsAndHarms) ||
                other.benefitsAndHarms == benefitsAndHarms) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.evidence, evidence) ||
                other.evidence == evidence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productIdImage,
      title,
      description,
      history,
      seson,
      taste,
      benefitsAndHarms,
      storage,
      recommendation,
      evidence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalProductImplCopyWith<_$SeasonalProductImpl> get copyWith =>
      __$$SeasonalProductImplCopyWithImpl<_$SeasonalProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonalProductImplToJson(
      this,
    );
  }
}

abstract class _SeasonalProduct implements SeasonalProduct {
  const factory _SeasonalProduct(
      {required final String productId,
      required final String productIdImage,
      required final String title,
      required final String description,
      required final String history,
      required final String seson,
      required final String taste,
      required final String benefitsAndHarms,
      required final String storage,
      required final String recommendation,
      required final String evidence}) = _$SeasonalProductImpl;

  factory _SeasonalProduct.fromJson(Map<String, dynamic> json) =
      _$SeasonalProductImpl.fromJson;

  @override
  String get productId;
  @override
  String get productIdImage;
  @override
  String get title;
  @override
  String get description;
  @override
  String get history;
  @override
  String get seson;
  @override
  String get taste;
  @override
  String get benefitsAndHarms;
  @override
  String get storage;
  @override
  String get recommendation;
  @override
  String get evidence;
  @override
  @JsonKey(ignore: true)
  _$$SeasonalProductImplCopyWith<_$SeasonalProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
