import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:culinar/app/app_view.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/auth/UI/screens/instruction_screen.dart';
import 'package:culinar/feature/auth/UI/screens/sign_in_screen.dart';
import 'package:culinar/feature/auth/UI/widgets/auth_text_filed.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _replayPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _replayPasswordController.dispose();
    super.dispose();
  }

  Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  void _showPrivacyPolicy(BuildContext context) async {
    const String url = 'https://fuap.ru/soglasie-pd.pdf';
    Uri uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e, stackTrace) {
      print('Error launching URL: $e');
      print('Stack trace: $stackTrace');
    }
  }

  @override
Widget build(BuildContext context) {
  return BlocListener<AuthBloc, AuthState>(
    listener: (context, state) {
      print('Current state: $state'); // Добавляем логирование текущего состояния
      if (state is Success) {
        Navigator.of(context).pop(); // Закрываем диалог
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AppView()),
        );
      } else if (state is Failure) {
        Navigator.of(context).pop(); // Закрываем диалог
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
      } else if (state is LoadingAuth) {
        showDialog(
          context: context,
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
                  image: AssetImage('assets/images/chef_cooking_logo.jpg'),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Регистрация',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 25),
              AuthTextFormField(
                labelText: 'Имя',
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Имя не может быть пустым';
                  }
                  return null;
                },
                prefixIcon: userIcon,
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
                  if (value.length < 6) {
                    return 'Пароль должен содержать не менее 6 символов';
                  }
                  return null;
                },
                prefixIcon: lockIcon,
              ),
              const SizedBox(height: 25),
              AuthTextFormField(
                labelText: 'Повторите пароль',
                controller: _replayPasswordController,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пароль не может быть пустым';
                  }
                  if (value != _passwordController.text) {
                    return 'Пароли не совпадают';
                  }
                  return null;
                },
                prefixIcon: lockIcon,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Checkbox(
                    activeColor: primaryColor,
                    value: _agreedToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        _agreedToTerms = value ?? false;
                      });
                    },
                  ),
                  Flexible(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InstructionScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Я согласен с правилами обработки данных',
                        style:
                            TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              SizedBox(
                width: 270,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      if (!_agreedToTerms) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Необходимо согласиться с обработкой данных'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else {
                        bool isConnected = await checkInternetConnection();
                        if (isConnected) {
                          context.read<AuthBloc>().add(SignUpRequested(
                                email: _emailController.text,
                                password: _passwordController.text,
                                name: _nameController.text,
                              ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Нет подключения к интернету'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    }
                  },
                  child: Text('Зарегистироваться',
                      style: Theme.of(context).textTheme.titleMedium),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('У вас есть аккаунт?',
                      style: Theme.of(context).textTheme.labelMedium),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
                      );
                    },
                    child: Text(
                      'Войти',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ),
  );
}}
