import 'dart:async';

import 'package:culinar/app/app_view.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/auth/UI/screens/sign_up_screen.dart';
import 'package:culinar/feature/auth/UI/widgets/my_text_filled.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Success) {
          _closeLoadingDialog(); // Закрытие диалогового окна загрузки
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AppView()),
          );
        }
        if (state is Failure) {
          _closeLoadingDialog(); // Закрытие диалогового окна загрузки
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is Loading) {
          _showLoadingDialog(context); // Показ диалогового окна загрузки
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child:
                      Image(image: AssetImage('assets/chef_cooking_logo.png')),
                ),
                const SizedBox(height: 40),
                Text(
                  'Вход',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 25),
                MyTextFormField(
                  labelText: 'Email',
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email не может быть пустым';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Неверный Email';
                    }
                    return null;
                  },
                  prefixIcon: emailIcon,
                ),
                const SizedBox(height: 25),
                MyTextFormField(
                  labelText: 'Пароль',
                  controller: _passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пароль не может быть пустым';
                    }
                    return null;
                  },
                  prefixIcon: lockIcon,
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFECB88B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(SignInRequested(
                              email: _emailController.text,
                              password: _passwordController.text,
                            ));
                      }
                    },
                    child: Text('Войти',
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('У вас нет аккаунта?',
                        style: Theme.of(context).textTheme.labelMedium ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: Text(
                          'Зарегистрироваться',
                          style: GoogleFonts.bitter(
                              textStyle: const TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//TODO: перенести код ниже
  late Completer<void> _dialogCompleter;

  void _showLoadingDialog(BuildContext context) {
    _dialogCompleter = Completer<void>();
    showDialog(
      context: context,
      barrierDismissible: false, // Запретить закрытие диалога нажатием вне его
      builder: (BuildContext context) {
        return const AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(color: Color(0xFF308B85)),
              SizedBox(height: 16),
              Text('Loading...'),
            ],
          ),
        );
      },
    ).then((_) {
      if (!_dialogCompleter.isCompleted) {
        _dialogCompleter.complete();
      }
    });
  }

  void _closeLoadingDialog() {
    if (_dialogCompleter != null && !_dialogCompleter.isCompleted) {
      _dialogCompleter.complete();
      Navigator.pop(context); // Закрытие диалога
    }
  }
}