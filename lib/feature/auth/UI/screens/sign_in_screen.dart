import 'package:culinar/app/app_view.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/auth/UI/screens/sign_up_screen.dart';
import 'package:culinar/feature/auth/UI/widgets/auth_text_filed.dart';
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
  bool _isDialogShowing = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showLoadingDialog(BuildContext context) {
    if (!_isDialogShowing) {
      _isDialogShowing = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
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
          );
        },
      );
    }
  }

  void _closeLoadingDialog(BuildContext context) {
    if (_isDialogShowing) {
      _isDialogShowing = false;
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoadingAuth) {
          print('LoadingAuth state detected');
          //_showLoadingDialog(context);
        } else if (state is AuthAuthenticated || state is Failure || state is AuthUnauthenticated) {
          print('Closing loading dialog');
          _closeLoadingDialog(context);
        }

        if (state is AuthAuthenticated) {
          print('AuthAuthenticated state detected');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AppView()),
          );
        } else if (state is Failure) {
          print('Failure state detected with error: ${state.error}');
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
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
                  child: Image(
                      image: AssetImage('assets/images/chef_cooking_logo.jpg')),
                ),
                const SizedBox(height: 40),
                Text(
                  'Вход',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 25),
                AuthTextFormField(
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
                AuthTextFormField(
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
                        print('Form validated, triggering SignInRequested');
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
                        style: Theme.of(context).textTheme.labelMedium),
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
                          style: GoogleFonts.inter(
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
}
