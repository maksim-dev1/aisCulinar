// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
          _$AppStartedImpl value, $Res Function(_$AppStartedImpl) then) =
      __$$AppStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
      _$AppStartedImpl _value, $Res Function(_$AppStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStartedImpl implements AppStarted {
  const _$AppStartedImpl();

  @override
  String toString() {
    return 'AuthEvent.appStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class AppStarted implements AuthEvent {
  const factory AppStarted() = _$AppStartedImpl;
}

/// @nodoc
abstract class _$$UserSignedOutImplCopyWith<$Res> {
  factory _$$UserSignedOutImplCopyWith(
          _$UserSignedOutImpl value, $Res Function(_$UserSignedOutImpl) then) =
      __$$UserSignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignedOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserSignedOutImpl>
    implements _$$UserSignedOutImplCopyWith<$Res> {
  __$$UserSignedOutImplCopyWithImpl(
      _$UserSignedOutImpl _value, $Res Function(_$UserSignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSignedOutImpl implements UserSignedOut {
  const _$UserSignedOutImpl();

  @override
  String toString() {
    return 'AuthEvent.userSignedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return userSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return userSignedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return userSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return userSignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut(this);
    }
    return orElse();
  }
}

abstract class UserSignedOut implements AuthEvent {
  const factory UserSignedOut() = _$UserSignedOutImpl;
}

/// @nodoc
abstract class _$$SignInRequestedImplCopyWith<$Res> {
  factory _$$SignInRequestedImplCopyWith(_$SignInRequestedImpl value,
          $Res Function(_$SignInRequestedImpl) then) =
      __$$SignInRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInRequestedImpl>
    implements _$$SignInRequestedImplCopyWith<$Res> {
  __$$SignInRequestedImplCopyWithImpl(
      _$SignInRequestedImpl _value, $Res Function(_$SignInRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInRequestedImpl implements SignInRequested {
  const _$SignInRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      __$$SignInRequestedImplCopyWithImpl<_$SignInRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return signInRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return signInRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return signInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return signInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(this);
    }
    return orElse();
  }
}

abstract class SignInRequested implements AuthEvent {
  const factory SignInRequested(
      {required final String email,
      required final String password}) = _$SignInRequestedImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpRequestedImplCopyWith<$Res> {
  factory _$$SignUpRequestedImplCopyWith(_$SignUpRequestedImpl value,
          $Res Function(_$SignUpRequestedImpl) then) =
      __$$SignUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name});
}

/// @nodoc
class __$$SignUpRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpRequestedImpl>
    implements _$$SignUpRequestedImplCopyWith<$Res> {
  __$$SignUpRequestedImplCopyWithImpl(
      _$SignUpRequestedImpl _value, $Res Function(_$SignUpRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
  }) {
    return _then(_$SignUpRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpRequestedImpl implements SignUpRequested {
  const _$SignUpRequestedImpl(
      {required this.email, required this.password, required this.name});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.signUpRequested(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestedImplCopyWith<_$SignUpRequestedImpl> get copyWith =>
      __$$SignUpRequestedImplCopyWithImpl<_$SignUpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return signUpRequested(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return signUpRequested?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class SignUpRequested implements AuthEvent {
  const factory SignUpRequested(
      {required final String email,
      required final String password,
      required final String name}) = _$SignUpRequestedImpl;

  String get email;
  String get password;
  String get name;
  @JsonKey(ignore: true)
  _$$SignUpRequestedImplCopyWith<_$SignUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFavoritesImplCopyWith<$Res> {
  factory _$$AddToFavoritesImplCopyWith(_$AddToFavoritesImpl value,
          $Res Function(_$AddToFavoritesImpl) then) =
      __$$AddToFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String recipeId});
}

/// @nodoc
class __$$AddToFavoritesImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AddToFavoritesImpl>
    implements _$$AddToFavoritesImplCopyWith<$Res> {
  __$$AddToFavoritesImplCopyWithImpl(
      _$AddToFavoritesImpl _value, $Res Function(_$AddToFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? recipeId = null,
  }) {
    return _then(_$AddToFavoritesImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToFavoritesImpl implements AddToFavorites {
  const _$AddToFavoritesImpl(this.userId, this.recipeId);

  @override
  final String userId;
  @override
  final String recipeId;

  @override
  String toString() {
    return 'AuthEvent.addToFavorites(userId: $userId, recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoritesImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      __$$AddToFavoritesImplCopyWithImpl<_$AddToFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return addToFavorites(userId, recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return addToFavorites?.call(userId, recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(userId, recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class AddToFavorites implements AuthEvent {
  const factory AddToFavorites(final String userId, final String recipeId) =
      _$AddToFavoritesImpl;

  String get userId;
  String get recipeId;
  @JsonKey(ignore: true)
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavoriteRecipesImplCopyWith<$Res> {
  factory _$$GetFavoriteRecipesImplCopyWith(_$GetFavoriteRecipesImpl value,
          $Res Function(_$GetFavoriteRecipesImpl) then) =
      __$$GetFavoriteRecipesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetFavoriteRecipesImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetFavoriteRecipesImpl>
    implements _$$GetFavoriteRecipesImplCopyWith<$Res> {
  __$$GetFavoriteRecipesImplCopyWithImpl(_$GetFavoriteRecipesImpl _value,
      $Res Function(_$GetFavoriteRecipesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetFavoriteRecipesImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFavoriteRecipesImpl implements GetFavoriteRecipes {
  const _$GetFavoriteRecipesImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthEvent.getFavoriteRecipes(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoriteRecipesImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoriteRecipesImplCopyWith<_$GetFavoriteRecipesImpl> get copyWith =>
      __$$GetFavoriteRecipesImplCopyWithImpl<_$GetFavoriteRecipesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return getFavoriteRecipes(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return getFavoriteRecipes?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (getFavoriteRecipes != null) {
      return getFavoriteRecipes(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return getFavoriteRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return getFavoriteRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (getFavoriteRecipes != null) {
      return getFavoriteRecipes(this);
    }
    return orElse();
  }
}

abstract class GetFavoriteRecipes implements AuthEvent {
  const factory GetFavoriteRecipes(final String userId) =
      _$GetFavoriteRecipesImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetFavoriteRecipesImplCopyWith<_$GetFavoriteRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavoritesImplCopyWith<$Res> {
  factory _$$RemoveFromFavoritesImplCopyWith(_$RemoveFromFavoritesImpl value,
          $Res Function(_$RemoveFromFavoritesImpl) then) =
      __$$RemoveFromFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String recipeId});
}

/// @nodoc
class __$$RemoveFromFavoritesImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RemoveFromFavoritesImpl>
    implements _$$RemoveFromFavoritesImplCopyWith<$Res> {
  __$$RemoveFromFavoritesImplCopyWithImpl(_$RemoveFromFavoritesImpl _value,
      $Res Function(_$RemoveFromFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? recipeId = null,
  }) {
    return _then(_$RemoveFromFavoritesImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavoritesImpl implements RemoveFromFavorites {
  const _$RemoveFromFavoritesImpl(this.userId, this.recipeId);

  @override
  final String userId;
  @override
  final String recipeId;

  @override
  String toString() {
    return 'AuthEvent.removeFromFavorites(userId: $userId, recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavoritesImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromFavoritesImplCopyWith<_$RemoveFromFavoritesImpl> get copyWith =>
      __$$RemoveFromFavoritesImplCopyWithImpl<_$RemoveFromFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userSignedOut,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password, String name)
        signUpRequested,
    required TResult Function(String userId, String recipeId) addToFavorites,
    required TResult Function(String userId) getFavoriteRecipes,
    required TResult Function(String userId, String recipeId)
        removeFromFavorites,
  }) {
    return removeFromFavorites(userId, recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function()? userSignedOut,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String name)?
        signUpRequested,
    TResult? Function(String userId, String recipeId)? addToFavorites,
    TResult? Function(String userId)? getFavoriteRecipes,
    TResult? Function(String userId, String recipeId)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(userId, recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userSignedOut,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String name)?
        signUpRequested,
    TResult Function(String userId, String recipeId)? addToFavorites,
    TResult Function(String userId)? getFavoriteRecipes,
    TResult Function(String userId, String recipeId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(userId, recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserSignedOut value) userSignedOut,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(GetFavoriteRecipes value) getFavoriteRecipes,
    required TResult Function(RemoveFromFavorites value) removeFromFavorites,
  }) {
    return removeFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserSignedOut value)? userSignedOut,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult? Function(RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserSignedOut value)? userSignedOut,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(GetFavoriteRecipes value)? getFavoriteRecipes,
    TResult Function(RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavorites implements AuthEvent {
  const factory RemoveFromFavorites(
      final String userId, final String recipeId) = _$RemoveFromFavoritesImpl;

  String get userId;
  String get recipeId;
  @JsonKey(ignore: true)
  _$$RemoveFromFavoritesImplCopyWith<_$RemoveFromFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthAuthenticatedImplCopyWith(_$AuthAuthenticatedImpl value,
          $Res Function(_$AuthAuthenticatedImpl) then) =
      __$$AuthAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyUser user});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthenticatedImpl>
    implements _$$AuthAuthenticatedImplCopyWith<$Res> {
  __$$AuthAuthenticatedImplCopyWithImpl(_$AuthAuthenticatedImpl _value,
      $Res Function(_$AuthAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthAuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthAuthenticatedImpl implements AuthAuthenticated {
  const _$AuthAuthenticatedImpl(this.user);

  @override
  final MyUser user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthenticatedImplCopyWith<_$AuthAuthenticatedImpl> get copyWith =>
      __$$AuthAuthenticatedImplCopyWithImpl<_$AuthAuthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthAuthenticated implements AuthState {
  const factory AuthAuthenticated(final MyUser user) = _$AuthAuthenticatedImpl;

  MyUser get user;
  @JsonKey(ignore: true)
  _$$AuthAuthenticatedImplCopyWith<_$AuthAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthUnauthenticatedImplCopyWith<$Res> {
  factory _$$AuthUnauthenticatedImplCopyWith(_$AuthUnauthenticatedImpl value,
          $Res Function(_$AuthUnauthenticatedImpl) then) =
      __$$AuthUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnauthenticatedImpl>
    implements _$$AuthUnauthenticatedImplCopyWith<$Res> {
  __$$AuthUnauthenticatedImplCopyWithImpl(_$AuthUnauthenticatedImpl _value,
      $Res Function(_$AuthUnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnauthenticatedImpl implements AuthUnauthenticated {
  const _$AuthUnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthUnauthenticated implements AuthState {
  const factory AuthUnauthenticated() = _$AuthUnauthenticatedImpl;
}

/// @nodoc
abstract class _$$LoadingAuthImplCopyWith<$Res> {
  factory _$$LoadingAuthImplCopyWith(
          _$LoadingAuthImpl value, $Res Function(_$LoadingAuthImpl) then) =
      __$$LoadingAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingAuthImpl>
    implements _$$LoadingAuthImplCopyWith<$Res> {
  __$$LoadingAuthImplCopyWithImpl(
      _$LoadingAuthImpl _value, $Res Function(_$LoadingAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuthImpl implements LoadingAuth {
  const _$LoadingAuthImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuth implements AuthState {
  const factory LoadingAuth() = _$LoadingAuthImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyUser user});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.user);

  @override
  final MyUser user;

  @override
  String toString() {
    return 'AuthState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements AuthState {
  const factory Success(final MyUser user) = _$SuccessImpl;

  MyUser get user;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.ailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return ailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return ailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (ailure != null) {
      return ailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return ailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return ailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (ailure != null) {
      return ailure(this);
    }
    return orElse();
  }
}

abstract class Failure implements AuthState {
  const factory Failure(final String error) = _$FailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesLoadedImplCopyWith<$Res> {
  factory _$$FavoritesLoadedImplCopyWith(_$FavoritesLoadedImpl value,
          $Res Function(_$FavoritesLoadedImpl) then) =
      __$$FavoritesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> favoriteRecipes});
}

/// @nodoc
class __$$FavoritesLoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FavoritesLoadedImpl>
    implements _$$FavoritesLoadedImplCopyWith<$Res> {
  __$$FavoritesLoadedImplCopyWithImpl(
      _$FavoritesLoadedImpl _value, $Res Function(_$FavoritesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteRecipes = null,
  }) {
    return _then(_$FavoritesLoadedImpl(
      null == favoriteRecipes
          ? _value._favoriteRecipes
          : favoriteRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadedImpl implements FavoritesLoaded {
  const _$FavoritesLoadedImpl(final List<Recipe> favoriteRecipes)
      : _favoriteRecipes = favoriteRecipes;

  final List<Recipe> _favoriteRecipes;
  @override
  List<Recipe> get favoriteRecipes {
    if (_favoriteRecipes is EqualUnmodifiableListView) return _favoriteRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteRecipes);
  }

  @override
  String toString() {
    return 'AuthState.favoritesLoaded(favoriteRecipes: $favoriteRecipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteRecipes, _favoriteRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteRecipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadedImplCopyWith<_$FavoritesLoadedImpl> get copyWith =>
      __$$FavoritesLoadedImplCopyWithImpl<_$FavoritesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MyUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) ailure,
    required TResult Function(List<Recipe> favoriteRecipes) favoritesLoaded,
  }) {
    return favoritesLoaded(favoriteRecipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MyUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? ailure,
    TResult? Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
  }) {
    return favoritesLoaded?.call(favoriteRecipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MyUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? ailure,
    TResult Function(List<Recipe> favoriteRecipes)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (favoritesLoaded != null) {
      return favoritesLoaded(favoriteRecipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) ailure,
    required TResult Function(FavoritesLoaded value) favoritesLoaded,
  }) {
    return favoritesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? ailure,
    TResult? Function(FavoritesLoaded value)? favoritesLoaded,
  }) {
    return favoritesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? ailure,
    TResult Function(FavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (favoritesLoaded != null) {
      return favoritesLoaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoaded implements AuthState {
  const factory FavoritesLoaded(final List<Recipe> favoriteRecipes) =
      _$FavoritesLoadedImpl;

  List<Recipe> get favoriteRecipes;
  @JsonKey(ignore: true)
  _$$FavoritesLoadedImplCopyWith<_$FavoritesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
