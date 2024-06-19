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
    final authBloc =
        BlocProvider.of<AuthBloc>(context); // Использование существующего блока
    authBloc.add(GetFavoriteRecipes(
        userId)); // Добавление события для получения избранных рецептов

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Избранное',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: arrowLeftIcon,
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          print('Текущее состояние: $state');
          if (state is LoadingAuth) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FavoritesLoaded) {
            final favoriteRecipes = state.favoriteRecipes;
            print('Количество избранных рецептов: ${favoriteRecipes.length}');
            return ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favoriteRecipes[index];
                return CardRecipeForList(recipe: recipe);
              },
            );
          } else {
            return const Center(
                child: Text('Не удалось загрузить избранные рецепты.'));
          }
        },
      ),
    );
  }
}
