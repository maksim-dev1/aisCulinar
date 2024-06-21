// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

// void addRecipeCollections() async {
//   // Получаем экземпляр Firestore
//   final FirebaseFirestore firestore = FirebaseFirestore.instance;

//   // Пример данных коллекции рецептов
//   List<RecipeCollection> collections = [
//     const RecipeCollection(
//       recipeCollectionId: "collection1",
//       recipes: {"recipe1": true, "recipe2": true},
//       recipeCollectionImage: "https://example.com/image1.jpg",
//       title: "Коллекция 1",
//       description: "Описание 1",
//     ),
//     const RecipeCollection(
//       recipeCollectionId: "collection2",
//       recipes: {"recipe3": true, "recipe4": true},
//       recipeCollectionImage: "https://example.com/image2.jpg",
//       title: "Коллекция 2",
//       description: "Описание 2",
//     ),
//     // Добавьте больше коллекций по необходимости
//   ];

//   // Добавляем коллекции рецептов в Firestore
//   for (var collection in collections) {
//     try {
//       await firestore.collection('recipe_collections').doc(collection.recipeCollectionId).set({
//         'recipes': collection.recipes,
//         'recipeCollectionImage': collection.recipeCollectionImage,
//         'title': collection.title,
//         'description': collection.description,
//       });
//       print("Коллекция рецептов '${collection.title}' добавлена успешно.");
//     } catch (e) {
//       print("Ошибка при добавлении коллекции '${collection.title}': $e");
//     }
//   }
// }

// void main() {
//   // Запуск функции для добавления коллекций рецептов
//   addRecipeCollections();
// }
