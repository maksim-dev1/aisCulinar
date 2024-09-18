import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:culinar/feature/recipe/UI/widgets/card_recipe_for_list.dart';

class UserRecipesListScreen extends StatelessWidget {
  final String userId;

  const UserRecipesListScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final userRecipesBloc = BlocProvider.of<RecipeBloc>(context);

    // Добавляем событие загрузки рецептов пользователя
    userRecipesBloc.add(LoadUserRecipes(userId));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Мои рецепты',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: arrowLeftIcon,
        ),
      ),
      body: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state is Loading) {
            return Center(
              child: AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(
                      color: secondaryColor,
                    ),
                    const SizedBox(height: 16),
                    const Text('Loading...'),
                  ],
                ),
              ),
            );
          } else if (state is Loaded) {
            final recipes = state.recipes;
            return ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return CardRecipeForList(recipe: recipe);
              },
            );
          } else if (state is Error) {
            return Center(child: Text('Ошибка: ${state.message}'));
          } else {
            return const Center(child: Text('Нет данных'));
          }
        },
      ),
    );
  }
}
