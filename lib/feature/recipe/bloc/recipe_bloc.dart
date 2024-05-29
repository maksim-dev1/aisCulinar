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
      try {
        await recipeRepository.addRecipe(event.recipe);
        final recipes = await recipeRepository.getRecipes();
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<UpdateRecipe>((event, emit) async {
      try {
        await recipeRepository.updateRecipe(event.recipe);
        final recipes = await recipeRepository.getRecipes();
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<DeleteRecipe>((event, emit) async {
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
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddToFavorites>((event, emit) async {
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
        emit(Loaded(favoriteRecipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<RemoveFromFavorites>((event, emit) async {
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

on<SearchIngredient>((event, emit) async {
  emit(const Loading());
  try {
    final ingredients = await recipeRepository.searchIngredients(event.query);
    if (kDebugMode) {
      print('Ingredients from Firestore: $ingredients');
    } 
    emit(IngredientsLoaded(ingredients));
  } catch (e) {
    if (kDebugMode) {
      print('Error fetching ingredients: $e');
    } 
    emit(Error(e.toString())); 
  }
});


    on<GetMeasurements>((event, emit) async {
      emit(const Loading());
      try {
        final measurements = await recipeRepository.getMeasurments('');
        emit(MeasurementsLoaded(measurements));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

  }
}
