// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// void main() async {
 


// void addRecipeToFirestore() async {
//   // Создаем экземпляр Firestore и Storage
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   FirebaseStorage storage = FirebaseStorage.instance;

//   // Загружаем изображение в Storage и получаем URL
//   String imageUrl;
//   final ref = storage.ref().child('path/to/your/image');
//   await ref.putFile(File('path/to/your/local/image')).then((_) async {
//     imageUrl = await ref.getDownloadURL();
//   });

//   // Создаем объекты для каждой модели
//   Category category = Category(categoryId: 'categoryId', title: 'Category Title');
//   Ingredient ingredient = Ingredient(ingredientId: 'ingredientId', title: 'Ingredient Title');
//   Measurement measurement = Measurement(measurementId: 'measurementId', title: 'Measurement Title');
//   IngredientWithQuantity ingredientWithQuantity = IngredientWithQuantity(ingredientWithQuantityId: 'ingredientWithQuantityId', ingredient: ingredient, quantity: '1', measurement: measurement, recipeId: 'recipeId');
//   StepRecipe stepRecipe = StepRecipe(stepId: 'stepId', description: 'Step Description', image: 'Step Image URL', recipeId: 'recipeId', stepNumber: 1);
//   Rating rating = Rating(ratingId: 'ratingId', userId: 'userId', overallRating: 4.5, totalRating: 100);
//   Comment comment = Comment(commentId: 'commentId', userId: 'userId', comment: 'User Comment', time: DateTime.now(), recipeId: 'recipeId');

//   // Создаем объект Recipe
//   Recipe recipe = Recipe(
//     recipeId: 'recipeId',
//     userId: 'userId',
//     imageUrl: '123',
//     title: 'Recipe Title',
//     description: 'Recipe Description',
//     cookingTime: 30,
//     category: category,
//     ingredients: [ingredientWithQuantity],
//     steps: [stepRecipe],
//     rating: rating,
//     comments: [comment],
//   );

//   // Добавляем рецепт в Firestore
//   await firestore.collection('recipes').doc(recipe.recipeId).set(recipe.toJson());
// }
// }