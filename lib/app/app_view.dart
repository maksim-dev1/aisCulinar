import 'package:culinar/feature/auth/UI/screens/sign_in_screen.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/UI/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    authBloc.add(const AppStarted());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFFECB88B),
          secondaryHeaderColor: const Color(0xFF308B85),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(0xFFECB88B),
            selectionColor: Color(0xFFECB88B),
            selectionHandleColor: Color(0xFF308B85),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFECB88B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
          ),
          textTheme: TextTheme(

            labelLarge: GoogleFonts.dosis(
                  textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              )),
              titleLarge: GoogleFonts.dosis(
                  textStyle: const TextStyle(
                color: Color(0xFF308B85),
                fontSize: 30,
                fontWeight: FontWeight.w900,
              )),
              titleMedium: GoogleFonts.dosis(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20, 
                fontWeight: FontWeight.w900,
              )),
              labelSmall: GoogleFonts.bitter(textStyle: const TextStyle(
                color: Color(0xFF308B85),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              )),
              labelMedium: GoogleFonts.bitter(textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              )),
              )
              ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthAuthenticated) {
            return const HomeScreen();
          } else {
            return BlocProvider(
              create: (context) => AuthBloc(
                  authRepository: context.read<AuthBloc>().authRepository),
              child: const SignInScreen(),
            );
          }
        },
      ),
    );
  }
}