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
  List<Recipe> allRecipes = []; // Это список всех рецептов
  String selectedCategory = '';
  String selectedCookingTime = '';

  RecipeBloc({required this.recipeRepository}) : super(const Initial()) {
    on<LoadRecipes>((event, emit) async {
      emit(const Loading());
      try {
        final recipes = await recipeRepository.getRecipes();
        allRecipes = recipes; // Сохраняем все рецепты
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<LoadRecipeDetail>((event, emit) async {
      emit(const Loading());
      try {
        print('Loading recipe detail for: ${event.recipeId}');
        final recipe = await recipeRepository.getRecipeById(event.recipeId);

        print('Ingredients and steps loaded for recipe: ${event.recipeId}');
        emit(RecipeDetailLoaded(recipe, recipe.ingredients, recipe.steps));
      } catch (e) {
        print('Error loading recipe detail: $e');
        emit(Error(e.toString()));
      }
    });

    on<AddRecipe>((event, emit) async {
      emit(const RecipeLoading([]));
      try {
        await recipeRepository.addRecipe(
          event.recipe,
          event.ingredientsWithQuantity,
          event.steps,
          event.image,
        );
        emit(const RecipeAdded());
        add(const LoadRecipes()); // Перезагружаем рецепты после добавления нового
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<UpdateRecipe>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.updateRecipe(event.recipe);
        add(const LoadRecipes()); // Перезагружаем рецепты после обновления
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<DeleteRecipe>((event, emit) async {
      emit(const Loading());
      try {
        await recipeRepository.deleteRecipe(event.recipeId);
        add(const LoadRecipes()); // Перезагружаем рецепты после удаления
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

    on<FilterRecipes>((event, emit) async {
      emit(const Loading());
      try {
        List<Recipe> recipes = allRecipes;

        if (event.cookingTime != '0') {
          recipes =
              await recipeRepository.getRecipesByCookingTime(event.cookingTime);
        }

        if (event.category.isNotEmpty) {
          recipes = recipes
              .where((recipe) => recipe.category.contains(event.category))
              .toList();
        }

        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<UpdateCategoryFilter>((event, emit) {
      selectedCategory = event.category;
      add(FilterRecipes(selectedCategory, selectedCookingTime));
    });

    on<UpdateCookingTimeFilter>((event, emit) {
      selectedCookingTime = event.cookingTime;
      add(FilterRecipes(selectedCategory, selectedCookingTime));
    });

    on<AddRating>((event, emit) async {
      try {
        await recipeRepository.addRating(event.recipeId, event.rating);
        final recipe = await recipeRepository.getRecipeById(event.recipeId);
        emit(RecipeDetailLoaded(
          recipe,
          recipe.ingredients,
          recipe.steps,
        ));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddComment>((event, emit) async {
      try {
        await recipeRepository.addComment(event.recipeId, event.comment);
        final recipe = await recipeRepository.getRecipeById(event.recipeId);
        emit(RecipeDetailLoaded(recipe, recipe.ingredients, recipe.steps));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<GetCommentsForRecipe>((event, emit) async {
      try {
        final comments =
            await recipeRepository.getCommentsForRecipe(event.recipeId);
        emit(CommentsLoaded(comments));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<DeleteComment>((event, emit) async {
      try {
        await recipeRepository.deleteComment(event.commentId);
        final comments =
            await recipeRepository.getCommentsForRecipe(event.commentId);
        emit(CommentsLoaded(comments));
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
        final updatedIngredients = await recipeRepository.getIngredients('');
        emit(IngredientsLoaded(updatedIngredients));
        emit(const IngredientAdded('Ингредиент успешно добавлен'));
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
