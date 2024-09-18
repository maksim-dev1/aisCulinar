import 'package:culinar/app/app_view.dart';
import 'package:culinar/connectivity_service.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final AuthRepository authRepository;
  final RecipeRepository recipeRepository;
  final ConnectivityService connectivityService;

  const App(
      this.authRepository, this.recipeRepository, this.connectivityService,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>.value(value: authRepository),
        RepositoryProvider<RecipeRepository>.value(value: recipeRepository),
        RepositoryProvider<ConnectivityService>.value(
            value: connectivityService),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authRepository: authRepository)
              ..add(const AppStarted()),
          ),
          BlocProvider<RecipeBloc>(
            create: (context) => RecipeBloc(recipeRepository: recipeRepository),
          ),
          BlocProvider<SesonalProductBloc>(
            create: (context) =>
                SesonalProductBloc(recipeRepository: recipeRepository),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}
