import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeRepository recipeRepository;

  RecipeBloc({required this.recipeRepository}) : super(const Initial()) {
    on<LoadRecipes>((event, emit) async {
      emit(const Loading());
      try {
        final recipes = await recipeRepository.getRecipes();
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddRecipe>((event, emit) async {
      emit(const Loading());
      try {
        if (kDebugMode) {
          print('Начато добавление рецепта');
        }
        await recipeRepository.addRecipe(event.recipe,
            event.ingredientsWithQuantity, event.steps, event.image);
        emit(const RecipeAdded());
        if (kDebugMode) {
          print('Рецепт успешно добавлен');
        }
      } catch (e) {
        emit(Error(e.toString()));
        if (kDebugMode) {
          print('Ошибка при добавлении рецепта: ${e.toString()}');
        }
      }
    });

    on<UpdateRecipe>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.updateRecipe(event.recipe);
        final recipes = await recipeRepository.getRecipes();
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<DeleteRecipe>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.deleteRecipe(event.recipeId);
        final recipes = await recipeRepository.getRecipes();
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetRecipeById>((event, emit) async {
      emit(const Loading());
      try {
        final recipe = await recipeRepository.getRecipeById(event.recipeId);
        emit(Loaded([recipe]));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetRecipesByCategory>((event, emit) async {
      emit(const Loading());
      try {
        final recipes =
            await recipeRepository.getRecipesByCategory(event.category);
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<SearchRecipes>((event, emit) async {
      emit(const Loading());
      try {
        final recipes = await recipeRepository.searchRecipes(event.query);
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddComment>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.addComment(event.recipeId, event.comment);
        final comments =
            await recipeRepository.getCommentsForRecipe(event.recipeId);
        emit(CommentsLoaded(comments));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetCommentsForRecipe>((event, emit) async {
      emit(const Loading());
      try {
        final comments =
            await recipeRepository.getCommentsForRecipe(event.recipeId);
        emit(CommentsLoaded(comments));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<DeleteComment>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.deleteComment(event.commentId);
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddToFavorites>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.addToFavorites(event.userId, event.recipeId);
        final favoriteRecipes =
            await recipeRepository.getFavoriteRecipesForUser(event.userId);
        emit(FavoritesLoaded(favoriteRecipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetFavoriteRecipesForUser>((event, emit) async {
      emit(const Loading());
      try {
        final favoriteRecipes =
            await recipeRepository.getFavoriteRecipesForUser(event.userId);
        emit(FavoritesLoaded(favoriteRecipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<RemoveFromFavorites>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.removeFromFavorites(
            event.userId, event.recipeId);
        final favoriteRecipes =
            await recipeRepository.getFavoriteRecipesForUser(event.userId);
        emit(FavoritesLoaded(favoriteRecipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddIngredient>((event, emit) async {
      emit(const Loading());
      try {
        if (event.ingredient.title.trim().isEmpty) {
          throw 'Название ингредиента не может быть пустым';
        }
        await recipeRepository.addIngredient(event.ingredient);

        List<Ingredient> updatedIngredients =
            await recipeRepository.getIngredients('');
        emit(IngredientsLoaded(updatedIngredients));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetIngredients>((event, emit) async {
      emit(const Loading());
      try {
        final ingredients = await recipeRepository.getIngredients('');
        emit(IngredientsLoaded(ingredients));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<SearchIngredients>((event, emit) async {
      emit(const Loading());
      try {
        final ingredients =
            await recipeRepository.searchIngredients(event.query);
        emit(IngredientsLoaded(ingredients));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetMeasurements>((event, emit) async {
      emit(const Loading());
      try {
        final measurements = await recipeRepository.getMeasurements('');
        emit(MeasurementsLoaded(measurements));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetCategories>((event, emit) async {
      emit(const Loading());
      try {
        final categories = await recipeRepository.getCategories(event.title);
        emit(CategoriesLoaded(categories));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });
  }
}
