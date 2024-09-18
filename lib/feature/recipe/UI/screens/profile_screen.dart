import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/auth/UI/screens/update_user_screen.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/UI/screens/favorites_list_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/user_recipe_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthAuthenticated) {
          final user = state.user;
          final userId = user.userId;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Профиль',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: arrowLeftIcon,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  children: [
                    user.photoURL != null
    ? CircleAvatar(
        radius: 100,
        backgroundImage: null, // Убираем стандартный фон
        child: ClipOval(
          child: Image.network(
            user.photoURL!,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: secondaryColor,
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes!)
                        : null,
                  ),
                );
              }
            },
          ),
        ),
      )
    : const CircleAvatar(
        radius: 100,
        child: Icon(Icons.person, size: 50),
      ),

                    const SizedBox(height: 20),
                    Text(
                      user.name,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FavoriteRecipesScreen(userId: userId),
                            ),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            elevation: WidgetStateProperty.all(0),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)))),
                        child: Row(
                          children: [
                            favoriteEmptyIcon,
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Избранное',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UserRecipesListScreen(userId: userId),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.transparent),
                          elevation: WidgetStateProperty.all(0),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)))),
                      child: Row(
                        children: [
                          listRecipesIcon,
                          SizedBox(width: 20),
                          Text(
                            'Мои рецепты',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UpdateUserScreen(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.transparent),
                          elevation: WidgetStateProperty.all(0),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)))),
                      child: Row(
                        children: [
                          settingsIcon,
                          SizedBox(width: 20),
                          Text(
                            'Настройки',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          );
        } else if (state is AuthUnauthenticated) {
          return const Scaffold(
            body: Center(child: Text('Пользователь не авторизован')),
          );
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
    );
  }
}
