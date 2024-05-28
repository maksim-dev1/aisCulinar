import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const Initial()) {
    on<AppStarted>((event, emit) async { 
      final currentUser = await authRepository.getCurrentUser();
      if (currentUser != null) {
        emit(AuthAuthenticated(currentUser));
      } else {
        emit(const AuthUnauthenticated()); 
      }
    });

    on<SignInRequested>((event, emit) async {
      emit(const Loading());
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
      emit(const Loading());
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
  }
}