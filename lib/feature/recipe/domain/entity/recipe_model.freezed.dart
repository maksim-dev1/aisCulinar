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
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get cookingTime => throw _privateConstructorUsedError;
  int get portions => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get ingredients =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get steps => throw _privateConstructorUsedError;
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
      String imageUrl,
      String title,
      String description,
      String cookingTime,
      int portions,
      String category,
      List<Map<String, dynamic>> ingredients,
      List<Map<String, dynamic>> steps,
      Rating rating,
      List<Comment> comments});

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
    Object? imageUrl = null,
    Object? title = null,
    Object? description = null,
    Object? cookingTime = null,
    Object? portions = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
              as String,
      portions: null == portions
          ? _value.portions
          : portions // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      String imageUrl,
      String title,
      String description,
      String cookingTime,
      int portions,
      String category,
      List<Map<String, dynamic>> ingredients,
      List<Map<String, dynamic>> steps,
      Rating rating,
      List<Comment> comments});

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
    Object? imageUrl = null,
    Object? title = null,
    Object? description = null,
    Object? cookingTime = null,
    Object? portions = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
              as String,
      portions: null == portions
          ? _value.portions
          : portions // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.cookingTime,
      required this.portions,
      required this.category,
      required final List<Map<String, dynamic>> ingredients,
      required final List<Map<String, dynamic>> steps,
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
  final String imageUrl;
  @override
  final String title;
  @override
  final String description;
  @override
  final String cookingTime;
  @override
  final int portions;
  @override
  final String category;
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
    return 'Recipe(recipeId: $recipeId, userId: $userId, imageUrl: $imageUrl, title: $title, description: $description, cookingTime: $cookingTime, portions: $portions, category: $category, ingredients: $ingredients, steps: $steps, rating: $rating, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.portions, portions) ||
                other.portions == portions) &&
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
      imageUrl,
      title,
      description,
      cookingTime,
      portions,
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
      required final String imageUrl,
      required final String title,
      required final String description,
      required final String cookingTime,
      required final int portions,
      required final String category,
      required final List<Map<String, dynamic>> ingredients,
      required final List<Map<String, dynamic>> steps,
      required final Rating rating,
      required final List<Comment> comments}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  String get recipeId;
  @override
  String get userId;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get description;
  @override
  String get cookingTime;
  @override
  int get portions;
  @override
  String get category;
  @override
  List<Map<String, dynamic>> get ingredients;
  @override
  List<Map<String, dynamic>> get steps;
  @override
  Rating get rating;
  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  String get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call({String categoryId, String title});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoriesImplCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$CategoriesImplCopyWith(
          _$CategoriesImpl value, $Res Function(_$CategoriesImpl) then) =
      __$$CategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId, String title});
}

/// @nodoc
class __$$CategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$CategoriesImpl>
    implements _$$CategoriesImplCopyWith<$Res> {
  __$$CategoriesImplCopyWithImpl(
      _$CategoriesImpl _value, $Res Function(_$CategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? title = null,
  }) {
    return _then(_$CategoriesImpl(
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
class _$CategoriesImpl implements _Categories {
  const _$CategoriesImpl({required this.categoryId, required this.title});

  factory _$CategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesImplFromJson(json);

  @override
  final String categoryId;
  @override
  final String title;

  @override
  String toString() {
    return 'Categories(categoryId: $categoryId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
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
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      __$$CategoriesImplCopyWithImpl<_$CategoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesImplToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories(
      {required final String categoryId,
      required final String title}) = _$CategoriesImpl;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$CategoriesImpl.fromJson;

  @override
  String get categoryId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
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
  String get ingredientWithQuantityId => throw _privateConstructorUsedError;
  Ingredient get ingredient => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  Measurement get measurement => throw _privateConstructorUsedError;

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
      {String ingredientWithQuantityId,
      Ingredient ingredient,
      String quantity,
      Measurement measurement});

  $IngredientCopyWith<$Res> get ingredient;
  $MeasurementCopyWith<$Res> get measurement;
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
    Object? ingredientWithQuantityId = null,
    Object? ingredient = null,
    Object? quantity = null,
    Object? measurement = null,
  }) {
    return _then(_value.copyWith(
      ingredientWithQuantityId: null == ingredientWithQuantityId
          ? _value.ingredientWithQuantityId
          : ingredientWithQuantityId // ignore: cast_nullable_to_non_nullable
              as String,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<$Res> get ingredient {
    return $IngredientCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasurementCopyWith<$Res> get measurement {
    return $MeasurementCopyWith<$Res>(_value.measurement, (value) {
      return _then(_value.copyWith(measurement: value) as $Val);
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
      {String ingredientWithQuantityId,
      Ingredient ingredient,
      String quantity,
      Measurement measurement});

  @override
  $IngredientCopyWith<$Res> get ingredient;
  @override
  $MeasurementCopyWith<$Res> get measurement;
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
    Object? ingredientWithQuantityId = null,
    Object? ingredient = null,
    Object? quantity = null,
    Object? measurement = null,
  }) {
    return _then(_$IngredientWithQuantityImpl(
      ingredientWithQuantityId: null == ingredientWithQuantityId
          ? _value.ingredientWithQuantityId
          : ingredientWithQuantityId // ignore: cast_nullable_to_non_nullable
              as String,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientWithQuantityImpl implements _IngredientWithQuantity {
  const _$IngredientWithQuantityImpl(
      {required this.ingredientWithQuantityId,
      required this.ingredient,
      required this.quantity,
      required this.measurement});

  factory _$IngredientWithQuantityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientWithQuantityImplFromJson(json);

  @override
  final String ingredientWithQuantityId;
  @override
  final Ingredient ingredient;
  @override
  final String quantity;
  @override
  final Measurement measurement;

  @override
  String toString() {
    return 'IngredientWithQuantity(ingredientWithQuantityId: $ingredientWithQuantityId, ingredient: $ingredient, quantity: $quantity, measurement: $measurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientWithQuantityImpl &&
            (identical(
                    other.ingredientWithQuantityId, ingredientWithQuantityId) ||
                other.ingredientWithQuantityId == ingredientWithQuantityId) &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ingredientWithQuantityId, ingredient, quantity, measurement);

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
      {required final String ingredientWithQuantityId,
      required final Ingredient ingredient,
      required final String quantity,
      required final Measurement measurement}) = _$IngredientWithQuantityImpl;

  factory _IngredientWithQuantity.fromJson(Map<String, dynamic> json) =
      _$IngredientWithQuantityImpl.fromJson;

  @override
  String get ingredientWithQuantityId;
  @override
  Ingredient get ingredient;
  @override
  String get quantity;
  @override
  Measurement get measurement;
  @override
  @JsonKey(ignore: true)
  _$$IngredientWithQuantityImplCopyWith<_$IngredientWithQuantityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StepRecipe _$StepRecipeFromJson(Map<String, dynamic> json) {
  return _StepRecipe.fromJson(json);
}

/// @nodoc
mixin _$StepRecipe {
  String get stepId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get stepNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepRecipeCopyWith<StepRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepRecipeCopyWith<$Res> {
  factory $StepRecipeCopyWith(
          StepRecipe value, $Res Function(StepRecipe) then) =
      _$StepRecipeCopyWithImpl<$Res, StepRecipe>;
  @useResult
  $Res call({String stepId, String description, String image, int stepNumber});
}

/// @nodoc
class _$StepRecipeCopyWithImpl<$Res, $Val extends StepRecipe>
    implements $StepRecipeCopyWith<$Res> {
  _$StepRecipeCopyWithImpl(this._value, this._then);

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
    Object? stepNumber = null,
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
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepRecipeImplCopyWith<$Res>
    implements $StepRecipeCopyWith<$Res> {
  factory _$$StepRecipeImplCopyWith(
          _$StepRecipeImpl value, $Res Function(_$StepRecipeImpl) then) =
      __$$StepRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stepId, String description, String image, int stepNumber});
}

/// @nodoc
class __$$StepRecipeImplCopyWithImpl<$Res>
    extends _$StepRecipeCopyWithImpl<$Res, _$StepRecipeImpl>
    implements _$$StepRecipeImplCopyWith<$Res> {
  __$$StepRecipeImplCopyWithImpl(
      _$StepRecipeImpl _value, $Res Function(_$StepRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepId = null,
    Object? description = null,
    Object? image = null,
    Object? stepNumber = null,
  }) {
    return _then(_$StepRecipeImpl(
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
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepRecipeImpl implements _StepRecipe {
  const _$StepRecipeImpl(
      {required this.stepId,
      required this.description,
      required this.image,
      required this.stepNumber});

  factory _$StepRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepRecipeImplFromJson(json);

  @override
  final String stepId;
  @override
  final String description;
  @override
  final String image;
  @override
  final int stepNumber;

  @override
  String toString() {
    return 'StepRecipe(stepId: $stepId, description: $description, image: $image, stepNumber: $stepNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepRecipeImpl &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.stepNumber, stepNumber) ||
                other.stepNumber == stepNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stepId, description, image, stepNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepRecipeImplCopyWith<_$StepRecipeImpl> get copyWith =>
      __$$StepRecipeImplCopyWithImpl<_$StepRecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepRecipeImplToJson(
      this,
    );
  }
}

abstract class _StepRecipe implements StepRecipe {
  const factory _StepRecipe(
      {required final String stepId,
      required final String description,
      required final String image,
      required final int stepNumber}) = _$StepRecipeImpl;

  factory _StepRecipe.fromJson(Map<String, dynamic> json) =
      _$StepRecipeImpl.fromJson;

  @override
  String get stepId;
  @override
  String get description;
  @override
  String get image;
  @override
  int get stepNumber;
  @override
  @JsonKey(ignore: true)
  _$$StepRecipeImplCopyWith<_$StepRecipeImpl> get copyWith =>
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
  String get userName => throw _privateConstructorUsedError;

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
      String recipeId,
      String userName});
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
    Object? userName = null,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
      String recipeId,
      String userName});
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
    Object? userName = null,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
      required this.recipeId,
      required this.userName});

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
  final String userName;

  @override
  String toString() {
    return 'Comment(commentId: $commentId, userId: $userId, comment: $comment, time: $time, recipeId: $recipeId, userName: $userName)';
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
                other.recipeId == recipeId) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, commentId, userId, comment, time, recipeId, userName);

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
      required final String recipeId,
      required final String userName}) = _$CommentImpl;

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
  String get userName;
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
  double get overallRating => throw _privateConstructorUsedError;
  int get totalRatings => throw _privateConstructorUsedError;
  String get ratingId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

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
      {double overallRating, int totalRatings, String ratingId, String userId});
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
    Object? overallRating = null,
    Object? totalRatings = null,
    Object? ratingId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      overallRating: null == overallRating
          ? _value.overallRating
          : overallRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      ratingId: null == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {double overallRating, int totalRatings, String ratingId, String userId});
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
    Object? overallRating = null,
    Object? totalRatings = null,
    Object? ratingId = null,
    Object? userId = null,
  }) {
    return _then(_$RatingImpl(
      overallRating: null == overallRating
          ? _value.overallRating
          : overallRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      ratingId: null == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl(
      {required this.overallRating,
      required this.totalRatings,
      required this.ratingId,
      required this.userId});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final double overallRating;
  @override
  final int totalRatings;
  @override
  final String ratingId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Rating(overallRating: $overallRating, totalRatings: $totalRatings, ratingId: $ratingId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.overallRating, overallRating) ||
                other.overallRating == overallRating) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings) &&
            (identical(other.ratingId, ratingId) ||
                other.ratingId == ratingId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, overallRating, totalRatings, ratingId, userId);

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
      {required final double overallRating,
      required final int totalRatings,
      required final String ratingId,
      required final String userId}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  double get overallRating;
  @override
  int get totalRatings;
  @override
  String get ratingId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipeCollection _$RecipeCollectionFromJson(Map<String, dynamic> json) {
  return _RecipeCollection.fromJson(json);
}

/// @nodoc
mixin _$RecipeCollection {
  String get recipeCollectionId => throw _privateConstructorUsedError;
  Map<String, dynamic> get recipeId => throw _privateConstructorUsedError;
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
      Map<String, dynamic> recipeId,
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
              as Map<String, dynamic>,
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
      Map<String, dynamic> recipeId,
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
          ? _value._recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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
      required final Map<String, dynamic> recipeId,
      required this.recipeCollectionImage,
      required this.title,
      required this.description})
      : _recipeId = recipeId;

  factory _$RecipeCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeCollectionImplFromJson(json);

  @override
  final String recipeCollectionId;
  final Map<String, dynamic> _recipeId;
  @override
  Map<String, dynamic> get recipeId {
    if (_recipeId is EqualUnmodifiableMapView) return _recipeId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recipeId);
  }

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
            const DeepCollectionEquality().equals(other._recipeId, _recipeId) &&
            (identical(other.recipeCollectionImage, recipeCollectionImage) ||
                other.recipeCollectionImage == recipeCollectionImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeCollectionId,
      const DeepCollectionEquality().hash(_recipeId),
      recipeCollectionImage,
      title,
      description);

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
      required final Map<String, dynamic> recipeId,
      required final String recipeCollectionImage,
      required final String title,
      required final String description}) = _$RecipeCollectionImpl;

  factory _RecipeCollection.fromJson(Map<String, dynamic> json) =
      _$RecipeCollectionImpl.fromJson;

  @override
  String get recipeCollectionId;
  @override
  Map<String, dynamic> get recipeId;
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
  String get season => throw _privateConstructorUsedError;
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
      String season,
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
    Object? season = null,
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
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
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
      String season,
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
    Object? season = null,
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
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
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
      required this.season,
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
  final String season;
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
    return 'SeasonalProduct(productId: $productId, productIdImage: $productIdImage, title: $title, description: $description, history: $history, season: $season, taste: $taste, benefitsAndHarms: $benefitsAndHarms, storage: $storage, recommendation: $recommendation, evidence: $evidence)';
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
            (identical(other.season, season) || other.season == season) &&
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
      season,
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
      required final String season,
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
  String get season;
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
