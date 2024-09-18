import 'dart:ui';

import 'package:culinar/app/app_view.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/auth/UI/widgets/auth_text_filed.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class UpdateUserScreen extends StatelessWidget {
  const UpdateUserScreen({super.key});

  Future<void> _pickImage(BuildContext context, String userId) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final file = File(pickedFile.path);

      try {
        final storageRef = FirebaseStorage.instance
            .ref()
            .child('user_photos')
            .child('$userId.jpg');

        await storageRef.putFile(file);

        final photoURL = await storageRef.getDownloadURL();

        context.read<AuthBloc>().add(AuthEvent.userProfileUpdated(
              userId,
              null,
              null,
              photoURL,
            ));

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Фото успешно обновлено')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ошибка при обновлении фото: $e')),
        );
      }
    }
  }

  @override
Widget build(BuildContext context) {
  return BlocListener<AuthBloc, AuthState>(
    listener: (context, state) {
      if (state is AuthAuthenticated) {
        Navigator.pop(context); // Возвращение на предыдущую страницу
      } else if (state is Failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ошибка: ${state.toString()}')),
        );
      }
    },
    child: BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthAuthenticated) {
          final user = state.user;
          final nameController = TextEditingController(text: user.name);
          final emailController = TextEditingController(text: user.email);

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Настройки',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: arrowLeftIcon,
              ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  user.photoURL != null
                      ? CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(user.photoURL!),
                        )
                      : CircleAvatar(
                          radius: 100,
                          child: userIcon,
                        ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _pickImage(context, user.userId),
                    child: Text(
                      'Обновить фото',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  AuthTextFormField(
                    controller: nameController,
                    labelText: 'Имя',
                  ),
                  const SizedBox(height: 20),
                  // AuthTextFormField(
                  //   controller: emailController,
                  //   labelText: 'Email',
                  // ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      final updatedName = nameController.text;
                      final updatedEmail = emailController.text;

                      context.read<AuthBloc>().add(AuthEvent.userProfileUpdated(
                            user.userId,
                            updatedName.isEmpty ? null : updatedName,
                            updatedEmail.isEmpty ? null : updatedEmail,
                            null, // No photoURL update
                          ));
                    },
                    child: Text(
                      'Сохранить изменения',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const UserSignedOut());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'Выйти',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        } else if (state is AuthUnauthenticated) {
          return const AppView();
        } else {
          return Scaffold(
            body: Center(
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
              ),
            ),
          );
        }
      },
    ),
  );
}
}
