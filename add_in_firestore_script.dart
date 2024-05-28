import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // Инициализируем виджеты Flutter
  WidgetsFlutterBinding.ensureInitialized();

  // Инициализируем Firebase
  await Firebase.initializeApp();

  // Создаем список ингредиентов для добавления
List<Measurement> toAdd = [
  const Measurement(title: 'Грамм', measurementId: ''),
  const Measurement(title: 'Килограмм', measurementId: ''),
  const Measurement(title: 'Миллиграмм', measurementId: ''),
  const Measurement(title: 'Литр', measurementId: ''),
  const Measurement(title: 'Миллилитр', measurementId: ''),
  const Measurement(title: 'Чайная ложка', measurementId: ''),
  const Measurement(title: 'Столовая ложка', measurementId: ''),
  const Measurement(title: 'Щепотка', measurementId: ''),
  const Measurement(title: 'Штука', measurementId: ''),
  const Measurement(title: 'Пучок', measurementId: ''),
  const Measurement(title: 'Лист', measurementId: ''),
  const Measurement(title: 'Ломтик', measurementId: ''),
  const Measurement(title: 'Стебель', measurementId: ''),
  const Measurement(title: 'Зубчик', measurementId: ''),
  const Measurement(title: 'Пакет', measurementId: ''),
  const Measurement(title: 'Банка', measurementId: ''),
  const Measurement(title: 'Бутылка', measurementId: ''),
  const Measurement(title: 'Кубик', measurementId: ''),
  const Measurement(title: 'Горсть', measurementId: ''),
  const Measurement(title: 'Кусочек', measurementId: ''),
  const Measurement(title: 'Стакан', measurementId: ''),
  const Measurement(title: 'Кружка', measurementId: ''),
];


  // Вызываем функцию для добавления ингредиентов
  await add(toAdd);
}

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<void> add(List<Measurement> measurement) async {
  for (var measurement in measurement) {
    // Проверяем наличие ингредиента в базе данных
    QuerySnapshot querySnapshot = await _firestore
        .collection('measurements')
        .where('title', isEqualTo: measurement.title)
        .get();

    // Если ингредиент отсутствует в базе, добавляем его
    if (querySnapshot.docs.isEmpty) {
      DocumentReference docRef = _firestore.collection('measurements').doc();
      // Устанавливаем ID ингредиента
      Measurement updatedIngredient = Measurement(
        measurementId: docRef.id,
        title: measurement.title,
      );
      // Добавляем ингредиент в базу данных
      await docRef.set(updatedIngredient.toJson());
      print('Ингредиент "${measurement.title}" успешно добавлен в базу данных.');
    } else {
      print('Ингредиент "${measurement.title}" уже существует в базе данных.');
    }
  }

  print('Процесс добавления ингредиентов завершен.');
}
