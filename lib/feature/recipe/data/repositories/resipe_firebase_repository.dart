import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:firebase_storage/firebase_storage.dart';

class RecipeFirebaseRepository implements RecipeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  RecipeFirebaseRepository(FirebaseFirestore firestore, FirebaseStorage storage);
  
    @override
  Future<void> addRecipe(Recipe recipe) async {
    try {
      // Upload the recipe image to Firebase Storage
      final imageFile = File(recipe.image);
      final imagePath = 'recipes/${recipe.recipeId}/image.jpg';
      final imageRef = _storage.ref().child(imagePath);
      final uploadTask = await imageRef.putFile(imageFile);
      final imageUrl = await uploadTask.ref.getDownloadURL();

      // Update the recipe object with the image URL
      final recipeWithImage = recipe.copyWith(image: imageUrl);

      // Add the recipe to Firestore
      await _firestore
          .collection('recipes')
          .doc(recipe.recipeId)
          .set(recipeWithImage.toJson());
    } catch (e) {
      throw Exception('Failed to add recipe: $e');
      }
  }
}


 