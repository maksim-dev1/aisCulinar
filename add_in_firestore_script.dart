// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   // Инициализируем виджеты Flutter
//   WidgetsFlutterBinding.ensureInitialized();

//   // Инициализируем Firebase
//   await Firebase.initializeApp();

//   // Создаем список ингредиентов для добавления
// List<Measurement> toAdd = [
//   const Measurement(title: 'мг', measurementId: ''), // миллиграмм
//   const Measurement(title: 'кг', measurementId: ''), // килограмм
//   const Measurement(title: 'г', measurementId: ''), // грамм
//   const Measurement(title: 'мл', measurementId: ''), // миллилитр
//   const Measurement(title: 'л', measurementId: ''), // литр
//   const Measurement(title: 'ч. л.', measurementId: ''), // чайная ложка
//   const Measurement(title: 'ст. л.', measurementId: ''), // столовая ложка
//   const Measurement(title: 'стакан', measurementId: ''), // стакан
//   const Measurement(title: 'по вкусу', measurementId: ''), // по вкусу
//   const Measurement(title: 'щепотка', measurementId: ''), // щепотка
//   const Measurement(title: 'кубик', measurementId: ''), // кусок
// ];
//   // Вызываем функцию для добавления ингредиентов
//   await add(toAdd);
// }

// final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Future<void> add(List<Measurement> measurement) async {
//   for (var measurement in measurement) {
//     // Проверяем наличие ингредиента в базе данных
//     QuerySnapshot querySnapshot = await _firestore
//         .collection('measurements')
//         .where('title', isEqualTo: measurement.title)
//         .get();

//     // Если ингредиент отсутствует в базе, добавляем его
//     if (querySnapshot.docs.isEmpty) {
//       DocumentReference docRef = _firestore.collection('measurements').doc();
//       // Устанавливаем ID ингредиента
//       Measurement updatedMeasurement = Measurement(
//         measurementId: docRef.id,
//         title: measurement.title,
//       );
//       // Добавляем ингредиент в базу данных
//       await docRef.set(updatedMeasurement.toJson());
//       print('Ингредиент "${measurement.title}" успешно добавлен в базу данных.');
//     } else {
//       print('Ингредиент "${measurement.title}" уже существует в базе данных.');
//     }
//   }

//   print('Процесс добавления ингредиентов завершен.');
// }
