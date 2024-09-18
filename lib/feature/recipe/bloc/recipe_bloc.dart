import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeRepository recipeRepository;
  List<Recipe> allRecipes = [];
  String selectedCategory = '';
  String selectedCookingTime = '';

  RecipeBloc({required this.recipeRepository}) : super(const InitialRecipe()) {
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
        add(const LoadRecipes());
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

    on<LoadRecipes>((event, emit) async {
      emit(const Loading());
      try {
        final recipes = await recipeRepository.getRecipes();
        emit(Loaded(recipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<LoadRecipeDetail>((event, emit) async {
      emit(const Loading());
      try {
        print(
            "Запрос к репозиторию для получения рецепта с recipeId: ${event.recipeId}");
        final recipe = await recipeRepository.getRecipeById(event.recipeId);
        print("Рецепт успешно получен из репозитория.");
        emit(RecipeDetailLoaded(recipe, recipe.ingredients, recipe.steps));
      } catch (e) {
        print("Ошибка при получении рецепта: $e");
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
        List<Recipe> filteredRecipes = allRecipes;

        if (event.cookingTime != '0') {
          filteredRecipes =
              await recipeRepository.getRecipesByCookingTime(event.cookingTime);
        }

        if (event.category.isNotEmpty) {
          filteredRecipes = filteredRecipes
              .where((recipe) => recipe.category.contains(event.category))
              .toList();
        }

        emit(Loaded(filteredRecipes));
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

    on<LoadUserRecipes>((event, emit) async {
      emit(const Loading());
      try {
        final userRecipes = await recipeRepository.getUserRecipes(event.userId);
        emit(Loaded(userRecipes));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddRating>((event, emit) async {
      try {
        await recipeRepository.addRating(event.recipeId, event.rating);
        add(LoadRecipeDetail(event
            .recipeId)); // Перезагружаем детали рецепта после добавления рейтинга
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<AddComment>((event, emit) async {
      try {
        await recipeRepository.addComment(event.recipeId, event.comment);
        add(LoadRecipeDetail(event
            .recipeId)); // Перезагружаем детали рецепта после добавления комментария
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

    on<LoadRecipeCollections>((event, emit) async {
      print('Bloc: LoadRecipeCollections event triggered');
      emit(Loading());
      try {
        final collections = await recipeRepository.getRecipeCollections();
        print('Bloc: Fetched ${collections.length} recipe collections');
        for (var collection in collections) {
          print('Collection data: ${collection.toJson()}');
        }
        if (collections.isEmpty) {
          emit(RecipeCollectionsLoaded(collections));
        } else {
          emit(RecipeCollectionsLoaded(collections));
        }
      } catch (e) {
        print('Bloc: Error loading recipe collections - $e');
        emit(Error(e.toString()));
      }
    });

    on<LoadRecipesForCollection>((event, emit) async {
      print(
          'Bloc: LoadRecipesForCollection event triggered with recipeIds: ${event.recipeIds}');
      emit(Loading());
      try {
        List<String> recipeIds = event.recipeIds;

        // Получаем рецепты по фактическим идентификаторам
        List<Recipe> recipes =
            await recipeRepository.getRecipesByIds(recipeIds);
        print('Bloc: Fetched ${recipes.length} recipes for collection');
        emit(Loaded(recipes));
      } catch (e) {
        print("Bloc: Error fetching recipes for collection - $e");
        emit(Error(e.toString()));
      }
    });

    /////////////////////////////////////
// on<AddToFavorites>((event, emit) async {
//   final currentState = state;
//   if (currentState is RecipeDetailLoaded) {
//     try {
//       await recipeRepository.addToFavorites(event.userId, event.recipeId);
//       final updatedRecipe = await recipeRepository.getRecipeById(event.recipeId);
//       emit(RecipeDetailLoaded(updatedRecipe, updatedRecipe.ingredients, updatedRecipe.steps));
//     } catch (e) {
//       emit(Error("Error adding to favorites: $e"));
//     }
//   }
// });

// on<RemoveFromFavorites>((event, emit) async {
//   final currentState = state;
//   if (currentState is RecipeDetailLoaded) {
//     try {
//       await recipeRepository.removeFromFavorites(event.userId, event.recipeId);
//       final updatedRecipe = await recipeRepository.getRecipeById(event.recipeId);
//       emit(RecipeDetailLoaded(updatedRecipe, updatedRecipe.ingredients, updatedRecipe.steps));
//     } catch (e) {
//       emit(Error("Error removing from favorites: $e"));
//     }
//   }
// });




    on<GetFavoriteRecipes>((event, emit) async {
      try {
        emit(const Loading());
        final favorites =
            await recipeRepository.getFavoriteRecipesForUser(event.userId);
        emit(FavoritesLoaded(favorites));
      } catch (e) {
        emit(Error("Error loading favorite recipes: $e"));
      }
    });
  }
}

class SesonalProductBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeRepository recipeRepository;

  SesonalProductBloc({required this.recipeRepository})
      : super(const InitialRecipe()) {
    print('SesonalProductBloc created');
    on<LoadSeasonalProductDetail>((event, emit) async {
      emit(const Loading());
      try {
        final product =
            await recipeRepository.getSeasonalProductById(event.productId);
        emit(SeasonalProductDetailLoaded(product));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });

    on<LoadSeasonalProducts>((event, emit) async {
      print('Bloc: LoadSeasonalProducts event triggered');
      emit(const Loading());
      try {
        final seasonalProducts = await recipeRepository.getSeasonalProducts();
        print('Bloc: Fetched ${seasonalProducts.length} seasonal products');
        for (var product in seasonalProducts) {
          print('Product data: ${product.toJson()}');
        }
        if (seasonalProducts.isEmpty) {
          emit(SeasonalProductsLoaded(seasonalProducts));
        } else {
          emit(SeasonalProductsLoaded(seasonalProducts));
        }
      } catch (e) {
        print('Bloc: Error loading seasonal products - $e');
        emit(Error(e.toString()));
      }
    });
  }
}
