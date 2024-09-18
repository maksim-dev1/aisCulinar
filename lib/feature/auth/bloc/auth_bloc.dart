import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const Initial()) {
    on<AppStarted>((event, emit) async {
      print('AppStarted event detected');
      try {
        final user = await authRepository.getCurrentUser();
        if (user != null) {
          emit(AuthAuthenticated(user));
          print('User authenticated: ${user.userId}');
        } else {
          emit(const AuthUnauthenticated());
          print('User not authenticated');
        }
      } catch (e) {
        print('Error checking auth status: $e');
        emit(const AuthUnauthenticated());
      }
    });

    on<SignInRequested>((event, emit) async {
      emit(const LoadingAuth());
      print('SignInRequested event detected');
      try {
        final user = await authRepository.signInWithEmailAndPassword(
            event.email, event.password);
        if (user != null) {
          emit(AuthAuthenticated(user));
          print('User authenticated after sign-in: ${user.userId}');
        } else {
          emit(const Failure("Неправильно введен email или пароль"));
          print('Authentication failed: Invalid email or password');
        }
      } catch (e) {
        emit(Failure("Ошибка при входе в систему: $e"));
        print('Sign-in error: $e');
      }
    });

    on<SignUpRequested>((event, emit) async {
      emit(const LoadingAuth());
      print('SignUpRequested event detected');
      try {
        final user = await authRepository.signUpWithEmailAndPassword(
          event.email,
          event.password,
          event.name,
        );
        if (user != null) {
          emit(AuthAuthenticated(user));
          print('User authenticated after sign-up: ${user.userId}');
        } else {
          emit(const Failure('Пользователь с таким email уже зарегистрирован'));
          print('Sign-up failed: User already registered');
        }
      } catch (e) {
        emit(const Failure("Ошибка при регистрации"));
        print('Sign-up error: $e');
      }
    });

    on<UserSignedOut>((event, emit) {
      print('UserSignedOut event detected');
      authRepository.signOut();
      emit(const AuthUnauthenticated());
      print('User signed out');
    });

    on<UserProfileUpdated>((event, emit) async {
      print('UserProfileUpdated event detected');
      try {
        if (event.photoURL != null) {
          await authRepository.updateUserPhoto(
            event.userId,
            event.photoURL!,
          );
          print('User photo updated: ${event.photoURL}');
        }

        if (event.name != null || event.email != null) {
          await authRepository.updateUserProfile(
            event.userId,
            event.name ?? '',
            event.email ?? '',
          );
          print(
              'User profile updated with name: ${event.name}, email: ${event.email}');
        }

        final updatedUser = await authRepository.getCurrentUser();
        if (updatedUser != null) {
          emit(AuthAuthenticated(updatedUser));
          print('User profile updated: ${updatedUser.userId}');
        }
      } catch (e) {
        emit(Failure("Ошибка при обновлении профиля: $e"));
        print('Profile update error: $e');
      }
    });

    on<AddToFavorites>((event, emit) async {
      final currentState = state;
      if (kDebugMode) {
        print("AddToFavorites event, current state: $currentState");
      }
      if (currentState is AuthAuthenticated) {
        try {
          await authRepository.addToFavorites(event.userId, event.recipeId);
          if (kDebugMode) {
            print("Added to favorites: ${event.recipeId}");
          }
          final favorites =
              await authRepository.getFavoriteRecipesForUser(event.userId);
          emit(FavoritesLoaded(favorites));
          if (kDebugMode) {
            print("Favorites loaded: $favorites");
          }
          final updatedUser = await authRepository.getCurrentUser();
          if (updatedUser != null) {
            emit(AuthAuthenticated(updatedUser));
            if (kDebugMode) {
              print("User updated: ${updatedUser.userId}");
            }
          } else {
            emit(const AuthUnauthenticated());
            if (kDebugMode) {
              print("User not authenticated after adding to favorites");
            }
          }
        } catch (e) {
          emit(Failure(e.toString()));
          if (kDebugMode) {
            print("Error adding to favorites: $e");
          }
        }
      } else {
        emit(const AuthUnauthenticated());
        if (kDebugMode) {
          print("User not authenticated during adding to favorites");
        }
      }
    });

    on<RemoveFromFavorites>((event, emit) async {
      final currentState = state;
      if (kDebugMode) {
        print("RemoveFromFavorites event, current state: $currentState");
      }
      if (currentState is AuthAuthenticated) {
        try {
          await authRepository.removeFromFavorites(
              event.userId, event.recipeId);
          if (kDebugMode) {
            print("Removed from favorites: ${event.recipeId}");
          }
          final favorites =
              await authRepository.getFavoriteRecipesForUser(event.userId);
          emit(FavoritesLoaded(favorites));
          if (kDebugMode) {
            print("Favorites loaded: $favorites");
          }
          final updatedUser = await authRepository.getCurrentUser();
          if (updatedUser != null) {
            emit(AuthAuthenticated(updatedUser));
            if (kDebugMode) {
              print("User updated: ${updatedUser.userId}");
            }
          } else {
            emit(const AuthUnauthenticated());
            if (kDebugMode) {
              print("User not authenticated after removing from favorites");
            }
          }
        } catch (e) {
          emit(Failure(e.toString()));
          if (kDebugMode) {
            print("Error removing from favorites: $e");
          }
        }
      } else {
        emit(const AuthUnauthenticated());
        if (kDebugMode) {
          print("User not authenticated during removing from favorites");
        }
      }
    });
  }
}
