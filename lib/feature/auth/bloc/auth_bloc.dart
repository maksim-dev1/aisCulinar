import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const Initial()) {
    on<AppStarted>((event, emit) async {
      print('AppStarted event');
      final currentUser = await authRepository.getCurrentUser();
      if (currentUser != null) {
        print('Пользователь: $currentUser');
        emit(AuthAuthenticated(currentUser));
      } else {
        emit(const AuthUnauthenticated());
      }
    });

    on<SignInRequested>((event, emit) async {
      emit(const LoadingAuth());
      try {
        final user = await authRepository.signInWithEmailAndPassword(
            event.email, event.password);
        if (user != null) {
          emit(Success(user));
        } else {
          emit(const Failure("Неправильно введен email или пароль"));
        }
      } catch (e) {
        emit(Failure("Ошибка при входе в систему:$e"));
      }
    });

    on<SignUpRequested>((event, emit) async {
      emit(const LoadingAuth());
      try {
        final user = await authRepository.signUpWithEmailAndPassword(
          event.email,
          event.password,
          event.name,
        );
        if (user != null) {
          emit(Success(user));
        } else {
          emit(const Failure('Пользователь с таким email уже зарегистрирован'));
        }
      } catch (e) {
        emit(const Failure("Ошибка при регистрации"));
      }
    });

    on<UserSignedOut>((event, emit) {
      authRepository.signOut();
      emit(const AuthUnauthenticated());
    });

    on<AddToFavorites>((event, emit) async {
      final currentState = state;
      print("Текущее состояние перед добавлением в избранное: $currentState");
      if (currentState is AuthAuthenticated) {
        print(
            "Добавление в избранное для рецепта ${event.recipeId} пользователем ${event.userId}");
        try {
          await authRepository.addToFavorites(event.userId, event.recipeId);
          final updatedUser = await authRepository.getCurrentUser();
          emit(AuthAuthenticated(
              updatedUser!)); // Update state with new user data
          print("Текущее состояние после добавления в избранное: ${state}");
        } catch (e) {
          print("Ошибка при добавлении в избранное: $e");
          emit(Failure(e.toString()));
        }
      } else {
        emit(const AuthUnauthenticated());
      }
    });

    on<RemoveFromFavorites>((event, emit) async {
      final currentState = state;
      print("Текущее состояние перед удалением из избранного: $currentState");
      if (currentState is AuthAuthenticated) {
        print(
            "Удаление из избранного для рецепта ${event.recipeId} пользователем ${event.userId}");
        try {
          await authRepository.removeFromFavorites(
              event.userId, event.recipeId);
          final updatedUser = await authRepository.getCurrentUser();
          emit(AuthAuthenticated(
              updatedUser!)); // Update state with new user data
          print("Текущее состояние после удаления из избранного: ${state}");
        } catch (e) {
          print("Ошибка при удалении из избранного: $e");
          emit(Failure(e.toString()));
        }
      } else {
        emit(const AuthUnauthenticated());
      }
    });

on<GetFavoriteRecipes>((event, emit) async {
  final currentState = state;
  print("GetFavoriteRecipes event: ${event.userId}");
  if (currentState is AuthAuthenticated) {
    try {
      emit(LoadingAuth());
      final favorites = await authRepository.getFavoriteRecipesForUser(event.userId);
      print("Favorites loaded successfully");
      emit(FavoritesLoaded(favorites));
      // Ensure user remains authenticated
      emit(AuthAuthenticated(currentState.user));
    } catch (e) {
      print("Ошибка при получении избранных рецептов: $e");
      emit(Failure(e.toString()));
    }
  } else {
    emit(const AuthUnauthenticated());
  }
});





  }
}
