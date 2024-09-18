import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart' as auth;
import 'package:culinar/feature/recipe/UI/widgets/card_recipe_for_list.dart';

class FavoriteRecipesScreen extends StatefulWidget {
  final String userId;

  const FavoriteRecipesScreen({super.key, required this.userId});

  @override
  State<FavoriteRecipesScreen> createState() => _FavoriteRecipesScreenState();
}

class _FavoriteRecipesScreenState extends State<FavoriteRecipesScreen> {
  late RecipeBloc _recipeBloc;

  @override
  void initState() {
    super.initState();
    _recipeBloc = BlocProvider.of<RecipeBloc>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _recipeBloc.add(RecipeEvent.getFavoriteRecipes(widget.userId));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Избранные рецепты',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: arrowLeftIcon,
        ),
      ),
      body: BlocListener<RecipeBloc, RecipeState>(
        listener: (context, state) {
          if (state is auth.AuthAuthenticated) {
            _recipeBloc.add(RecipeEvent.getFavoriteRecipes(widget.userId));
          }
        },
        child: BlocBuilder<RecipeBloc, RecipeState>(builder: (context, state) {
          if (kDebugMode) {
            print("Current state: $state");
          }
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
          } else if (state is FavoritesLoaded) {
            final recipes = state.favoriteRecipes;
            return ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return CardRecipeForList(recipe: recipe);
              },
            );
          } else if (state is auth.Failure) {
            return Center(child: Text('Ошибка: ${state.toString()}'));
          } else if (state is auth.AuthUnauthenticated) {
            return const Center(child: Text('Войдите, чтобы видеть избранное'));
          } else {
            return const Center(child: Text('Нет данных'));
          }
        }),
      ),
    );
  }
}
