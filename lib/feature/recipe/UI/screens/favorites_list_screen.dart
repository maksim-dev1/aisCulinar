import 'package:culinar/design/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/UI/widgets/card_recipe_for_list.dart';

class FavoritesListScreen extends StatelessWidget {
  final String userId;

  const FavoritesListScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    authBloc.add(GetFavoriteRecipes(
        userId)); // Добавляем запрос для загрузки избранных рецептов

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Избранное',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Закрываем страницу
          },
          icon: arrowLeftIcon,
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          print(
              'Текущее состояние: $state'); // Вывод состояния в консоль для отладки

          if (state is LoadingAuth) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FavoritesLoaded) {
            final favoriteRecipes = state.favoriteRecipes;
            return ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favoriteRecipes[index];
                return CardRecipeForList(recipe: recipe);
              },
            );
          } else if (state is AuthAuthenticated) {
            return const Center(
                child: Text('Нет избранных рецептов или произошла ошибка.'));
          } else if (state is Failure) {
            print(
                'Произошла ошибка при загрузке избранных рецептов: ${state.error}'); // Вывод ошибки в консоль
            return const Center(
                child: Text('Не удалось загрузить избранные рецепты.'));
          } else {
            return const Center(
                child: Text('Не удалось загрузить избранные рецепты.'));
          }
        },
      ),
    );
  }
}
