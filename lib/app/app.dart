import 'package:culinar/app/app_view.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final AuthRepository authRepository;
  const App(this.authRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthBloc>(
      create: (context) => AuthBloc(
				authRepository: authRepository
			),
      child: const AppView(),
    );
  }
}