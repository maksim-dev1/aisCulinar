import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

abstract class AuthRepository {

  Future<MyUser?> getCurrentUser();

   Future<void> createUser(MyUser user);

  // Future<void> updateUser(MyUser user);

  // Future<void> deleteUser(String userId);

  Future<MyUser?> signInWithEmailAndPassword(String email, String password);

  Future<MyUser?> signUpWithEmailAndPassword(String email, String password, String name);

  Future<void> signOut();

  Future<void> addToFavorites(String userId, String recipeId);

  Future<void> removeFromFavorites(String userId, String recipeId);

 Future<List<Recipe>> getFavoriteRecipesForUser(String userId);

 Future<Recipe> getRecipeById(String recipeId);
}