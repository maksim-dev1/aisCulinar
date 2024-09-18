// import 'dart:io';
// import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
// import 'package:uuid/uuid.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// class RecipeRepository {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> addRecipe(
//     Recipe recipe,
//     List<IngredientWithQuantity> ingredients,
//     List<StepRecipe> steps,
//     File? image,
//   ) async {
//     try {
//       DocumentReference recipeDocRef = _firestore.collection('recipes').doc();
//       String recipeId = recipeDocRef.id;
//       print('Создан документ рецепта с ID: $recipeId');

//       recipe = recipe.copyWith(recipeId: recipeId);

//       String? imageUrl;
//       if (image != null) {
//         imageUrl = await _uploadImageToStorage(image, recipeId);
//         print('Изображение загружено с URL: $imageUrl');
//       }

//       List<Map<String, dynamic>> ingredientData = ingredients.map((ingredientWithQuantity) => {
//         'ingredientWithQuantityId': ingredientWithQuantity.ingredientWithQuantityId,
//         'ingredientName': ingredientWithQuantity.ingredient.title,
//         'quantity': ingredientWithQuantity.quantity,
//         'measurement': ingredientWithQuantity.measurement.title,
//       }).toList();

//       List<Map<String, dynamic>> stepData = [];
//       for (var step in steps) {
//         String stepImageUrl = '';
//         if (step.image.isNotEmpty) {
//           stepImageUrl = await _uploadImageToStorage(File(step.image), recipeId);
//           print('Изображение шага загружено с URL: $stepImageUrl');
//         }
//         stepData.add({
//           'stepId': step.stepId,
//           'description': step.description,
//           'image': stepImageUrl,
//           'stepNumber': step.stepNumber,
//         });
//       }

//       await recipeDocRef.set({
//         'recipeId': recipeId,
//         'userId': recipe.userId,
//         'imageUrl': imageUrl ?? '',
//         'title': recipe.title,
//         'description': recipe.description,
//         'cookingTime': recipe.cookingTime,
//         'portions': recipe.portions,
//         'category': recipe.category,
//         'ingredients': ingredientData,
//         'steps': stepData,
//         'rating': recipe.rating.toJson(),
//         'comments': [],
//       });

//       print('Рецепт успешно добавлен в Firestore');
//     } catch (e) {
//       print('Ошибка при добавлении рецепта: ${e.toString()}');
//       throw Exception("Error adding recipe: ${e.toString()}");
//     }
//   }

//   Future<String> _uploadImageToStorage(File image, String recipeId) async {
//     try {
//       String filePath = 'recipe_images/$recipeId/${DateTime.now().millisecondsSinceEpoch}.jpg';
//       TaskSnapshot uploadTask = await FirebaseStorage.instance.ref().child(filePath).putFile(image);
//       String downloadUrl = await uploadTask.ref.getDownloadURL();
//       return downloadUrl;
//     } catch (e) {
//       print('Ошибка при загрузке изображения: ${e.toString()}');
//       throw Exception('Error uploading image: ${e.toString()}');
//     }
//   }
// }

// Future<void> addSampleRecipes() async {
//   RecipeRepository recipeRepository = RecipeRepository();

//   // Пример рецепта с заполненными данными
//   Recipe sampleRecipe = const Recipe(
//     recipeId: '',
//     userId: 'sampleUserId',
//     imageUrl: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423250.jpg',
//     title: 'Блинчики с начинкой из творога и клубники',
//     description: 'Блины - наша национальная гордость. Именно вариативность и разнообразие начинок делают их одним из самых популярных блюд русской кухни. В начале летнего сезона предлагаю начинку для блинов из творожного крема и свежей ароматной клубники - это аппетитно и очень вкусно!',
//     cookingTime: '60',
//     portions: 5,
//     category: 'Десерт',
//     ingredients: [],
//     steps: [],
//     rating: Rating(
//       ratingId: '',
//       userId: '',
//       overallRating: 0,
//       totalRatings: 0,
//     ),
//     comments: [],
//   );

//   // Пример ингредиентов для рецепта
//   List<IngredientWithQuantity> sampleIngredients = [
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '1', title: 'Кефир'),
//       quantity: '500',
//       measurement: const Measurement(measurementId: '1', title: 'мл'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '2', title: 'Яйца'),
//       quantity: '2',
//       measurement: const Measurement(measurementId: '2', title: 'шт'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '3', title: 'Мука'),
//       quantity: '200',
//       measurement: const Measurement(measurementId: '3', title: 'г'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '4', title: 'Масло растительное'),
//       quantity: '3',
//       measurement: const Measurement(measurementId: '4', title: 'ст. л.'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '5', title: 'Сахар'),
//       quantity: '3',
//       measurement: const Measurement(measurementId: '5', title: 'ст. л.'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '6', title: 'Ванилин'),
//       quantity: '1',
//       measurement: const Measurement(measurementId: '6', title: 'Щепотка'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '7', title: 'Соль'),
//       quantity: '1.2',
//       measurement: const Measurement(measurementId: '7', title: 'ч. л.'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '8', title: 'Клубника'),
//       quantity: '400',
//       measurement: const Measurement(measurementId: '8', title: 'г'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '9', title: 'Творог'),
//       quantity: '500',
//       measurement: const Measurement(measurementId: '9', title: 'г'),
//     ),
//     IngredientWithQuantity(
//       ingredientWithQuantityId: const Uuid().v4(),
//       ingredient: const Ingredient(ingredientId: '10', title: 'Сметана'),
//       quantity: '100',
//       measurement: const Measurement(measurementId: '10', title: 'г'),
//     ),
//   ];

//   // Пример шагов для рецепта
//   List<StepRecipe> sampleSteps = [
//     StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Подготовьте все необходимые ингредиенты.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423251.jpg', // Add path to your image
//       stepNumber: 1,
//     ),
//     StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'В глубокую миску вбейте яйца, добавьте сахар, соль, перемешайте.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423252.jpg', // Add path to your image
//       stepNumber: 2,
//     ),
//     StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'В глубокую миску вбейте яйца, добавьте сахар, соль, перемешайте.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423253.jpg', // Add path to your image
//       stepNumber: 3,
//     ),
//     StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Влейте в миску две трети кефира, перемешайте.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423254.jpg', // Add path to your image
//       stepNumber: 4,
//     ),
//     StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Всыпьте оставшуюся муку, перемешайте венчиком до однородности.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423255.jpg', // Add path to your image
//       stepNumber: 5,
//     ),
//     StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Добавьте в миску оставшийся кефир и растительное масло, перемешайте. 1 ст. ложку масла оставьте, чтобы смазать сковороду перед первым блином, затем смазывать не нужно, так как в тесте будет растительное масло.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423256.jpg', // Add path to your image
//       stepNumber: 6,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Тесто по густоте получилось классическое блинное, с ложки стекает тонкой струйкой. Оставьте тесто на столе на 15-20 минут, чтобы выделилась клейковина и блины не рвались.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423257.jpg', // Add path to your image
//       stepNumber: 7,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Смажьте сковороду растительным маслом и разогрейте её. На горячую сковороду вылейте 1 половник теста. Вращайте сковороду, чтобы тесто распределилось по дну. У меня сковорода диаметром',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423258.jpg', // Add path to your image
//       stepNumber: 8,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Жарьте блины по 2 минуты с каждой стороны, затем выложите их стопкой на тарелку.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423259.jpg', // Add path to your image
//       stepNumber: 9,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Из получившегося количества теста получилось 10 блинов.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423262.jpg', // Add path to your image
//       stepNumber: 10,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Приготовьте начинку. Для этого соедините в миске творог, сахар и сметану, перемешайте.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423260.jpg', // Add path to your image
//       stepNumber: 11,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Клубнику вымойте, очистите от зелёных хвостиков. Крупные ягоды разрежьте пополам. Немного клубники отложите для украшения.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423261.jpg', // Add path to your image
//       stepNumber: 12,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Выложите 1 ст. ложку творожного крема с горкой на одну сторону блина. Сверху выложите в ряд половинки клубники.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423263.jpg', // Add path to your image
//       stepNumber: 13,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Начиная со смазанной кремом стороны, заверните блин в рулет.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423264.jpg', // Add path to your image
//       stepNumber: 14,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Так же поступите с остальными блинами. Чтобы крем стабилизировался (слегка застыл) и блинчики было легче нарезать, можно ненадолго отправить их в холодильник.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423265.jpg', // Add path to your image
//       stepNumber: 15,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Блинчики с начинкой из творога и клубники готовы! Разрежьте их пополам, украсьте сахарной пудрой, свежими ягодами клубники и подавайте к столу.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423266.jpg', // Add path to your image
//       stepNumber: 16,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Чуть сладковатый мягкий блинчик, сочные ягоды и нежный тающий во рту творожный крем - идеальное сочетание.',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423267.jpg', // Add path to your image
//       stepNumber: 17,
//     ),
//         StepRecipe(
//       stepId: const Uuid().v4(),
//       description: 'Такой творожно-ягодный десерт не нуждается в соусах и заливках. Это невероятно вкусное и красивое блюдо!',
//       image: 'https://img1.russianfood.com/dycontent/images_upl/424/big_423268.jpg', // Add path to your image
//       stepNumber: 18,
//     ),

//   ];

//   await recipeRepository.addRecipe(sampleRecipe, sampleIngredients, sampleSteps, null);
// }

// void main() async {
//   await addSampleRecipes();
//   print('Sample recipes added successfully!');
// }
