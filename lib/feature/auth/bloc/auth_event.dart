part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AppStarted;
  const factory AuthEvent.userSignedOut() = UserSignedOut;
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;
  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
    required String name,
  }) = SignUpRequested;
  const factory AuthEvent.addToFavorites(String userId, String recipeId) =
      AddToFavorites;
  const factory AuthEvent.getFavoriteRecipes(String userId) = GetFavoriteRecipes;
  const factory AuthEvent.removeFromFavorites(String userId, String recipeId) =
      RemoveFromFavorites;
}
