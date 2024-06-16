// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   // Инициализируем виджеты Flutter
//   WidgetsFlutterBinding.ensureInitialized();

//   // Инициализируем Firebase
//   await Firebase.initializeApp();

//   // Создаем список рецептов для добавления
// List<Recipe> recipesToAdd = [
//   const Recipe(
//     recipeId: '', // Этот идентификатор будет сгенерирован автоматически при добавлении в Firestore
//     userId: 'user123', // Идентификатор пользователя, создающего рецепт
//     imageUrl: 'https://example.com/image.jpg', // URL изображения рецепта
//     title: 'Омлет с овощами', // Заголовок рецепта
//     description: 'Простой и вкусный омлет с овощами', // Описание рецепта
//     cookingTime: '15 минут', // Время приготовления
//     portions: 2, // Количество порций
//     categories: 'Завтрак', // Категории рецепта
//     ingredients: 'Яйца, Помидоры, Лук, Соль, Перец', // Ингредиенты
//     steps: '1. Разрежьте помидоры и лук\n2. Взбейте яйца\n3. Обжарьте овощи и добавьте яйца\n4. Подавайте с солью и перцем', // Шаги приготовления
//     rating: Rating(overallRating: 4.5, totalRating: 100, ratingId: '', userId: ''), // Рейтинг рецепта
//     comments: [], // Комментарии к рецепту
//   ),
//   const Recipe(
//     recipeId: '', 
//     userId: 'user456', 
//     imageUrl: 'https://example.com/pizza.jpg', 
//     title: 'Пицца с ветчиной и грибами', 
//     description: 'Сочная и ароматная пицца с ветчиной и грибами', 
//     cookingTime: '30 минут', 
//     portions: 4, 
//     categories: 'Ужин, Праздник', 
//     ingredients: 'Тесто для пиццы, Соус для пиццы, Ветчина, Грибы, Сыр', 
//     steps: '1. Раскатайте тесто\n2. Намажьте соус\n3. Выложите начинку\n4. Посыпьте сыром\n5. Выпекайте в духовке', 
//     rating: Rating(overallRating: 4.8, totalRating: 150, ratingId: '', userId: ''), 
//     comments: [],
//   ),
//   // Добавьте здесь другие рецепты по вашему усмотрению
// ];

//   // Вызываем функцию для добавления рецептов
//   await addRecipes(recipesToAdd);
// }

// final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Future<void> addRecipes(List<Recipe> recipes) async {
//   for (var recipe in recipes) {
//     try {
//       // Создание документа рецепта
//       DocumentReference recipeDocRef = _firestore.collection('recipes').doc();
//       String recipeId = recipeDocRef.id;
//       print('Создан документ рецепта с ID: $recipeId');

//       // Создание документа ингредиентов с количествами
//       DocumentReference ingredientWithQuantityDocRef =
//           _firestore.collection('ingredientWithQuantity').doc();
//       String ingredientDocId = ingredientWithQuantityDocRef.id;
//       print('Создан документ ингредиентов с ID: $ingredientDocId');

//       // Создание документа шагов рецепта
//       DocumentReference stepRecipeDocRef =
//           _firestore.collection('stepRecipe').doc();
//       String stepDocId = stepRecipeDocRef.id;
//       print('Создан документ шагов рецепта с ID: $stepDocId');

//       // Добавление основного документа рецепта
//       await recipeDocRef.set({
//         'recipeId': recipeId,
//         'userId': recipe.userId,
//         'imageUrl': recipe.imageUrl,
//         'title': recipe.title,
//         'description': recipe.description,
//         'cookingTime': recipe.cookingTime,
//         'portions': recipe.portions,
//         'categories': recipe.categories,
//         'ingredients': ingredientDocId,
//         'steps': stepDocId,
//         'rating': recipe.rating.toJson(),
//         'comments': [],
//       });

//       print('Рецепт "${recipe.title}" успешно добавлен в Firestore.');
//     } catch (e) {
//       print('Ошибка при добавлении рецепта: $e');
//     }
//   }

//   print('Процесс добавления рецептов завершен.');
// }
