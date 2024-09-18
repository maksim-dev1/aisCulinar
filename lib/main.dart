import 'package:culinar/app/app.dart';
import 'package:culinar/connectivity_service.dart';
import 'package:culinar/feature/auth/data/repositories/auth_firebase_repository.dart';
import 'package:culinar/feature/recipe/data/repositories/resipe_firebase_repository.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );

  ConnectivityService connectivityService = ConnectivityService();
  connectivityService
      .simulateNoConnection(false);

  runApp(App(
    AuthFirebaseRepository(),
    RecipeFirebaseRepository(),
    connectivityService,
  ));
}
