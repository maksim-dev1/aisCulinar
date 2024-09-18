import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:culinar/connectivity_service.dart';
import 'package:culinar/design/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/feature/auth/UI/screens/sign_in_screen.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/UI/screens/home_screen.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';

// Основной виджет приложения
class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();
    // Проверяем подключение к интернету при инициализации виджета
    _checkConnection();
  }

  // Асинхронная функция для проверки подключения к интернету
  Future<void> _checkConnection() async {
    var connectivityService =
        RepositoryProvider.of<ConnectivityService>(context);
    bool isConnected = await connectivityService.isConnected();
    setState(() {
      _isConnected = isConnected;
    });
  }

  // Функция для обновления статуса подключения
  void _updateConnectionStatus(ConnectivityResult result) {
    bool isConnected = result != ConnectivityResult.none;
    setState(() {
      _isConnected = isConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFECB88B),
        secondaryHeaderColor: const Color(0xFF308B85),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFECB88B),
          selectionColor: Color(0xFFECB88B),
          selectionHandleColor: Color(0xFFECB88B),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFECB88B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        textTheme: TextTheme(
          labelLarge: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          titleLarge: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFF308B85),
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          titleMedium: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          labelSmall: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFF308B85),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          labelMedium: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      home: _isConnected
          ? BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                // Определяем, сохранено ли состояние AuthAuthenticated
                if (state is AuthAuthenticated) {
                  return HomeScreen(
                    recipeRepository:
                        RepositoryProvider.of<RecipeRepository>(context),
                  );
                } else if (state is AuthUnauthenticated) {
                  return const SignInScreen();
                } else {
                  // Добавляем обработку для других состояний, если это необходимо
                  return Center(
                      child: AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(
                            color: secondaryColor,
                          ),
                          const SizedBox(height: 16),
                          const Text('Loading...'),
                        ],
                      ),
                    ),);
                }
              },
            )
          : const NoInternetScreen(),
    );
  }
}

// Экран, отображаемый при отсутствии подключения к интернету
class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Нет подключения к интернету. Проверьте ваше соединение.'),
      ),
    );
  }
}
