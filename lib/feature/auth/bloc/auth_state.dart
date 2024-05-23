part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(MyUser user) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;

    const factory AuthState.loading() = Loading;
  const factory AuthState.success(MyUser user) = Success;
  const factory AuthState.failure(String error) = Failure;
}
 