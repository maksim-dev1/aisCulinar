import 'package:culinar/app/app_view.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/auth/data/repositories/auth_repository.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final AuthRepository authRepository;
  final RecipeRepository recipeRepository;
  const App(this.authRepository, this.recipeRepository, {super.key});
 
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>.value(value: authRepository),
        RepositoryProvider<RecipeRepository>.value(value: recipeRepository), // добавлено предоставление репозитория для RecipeBloc
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authRepository: authRepository),
          ),
          BlocProvider<RecipeBloc>(
            create: (context) => RecipeBloc(recipeRepository: recipeRepository),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}