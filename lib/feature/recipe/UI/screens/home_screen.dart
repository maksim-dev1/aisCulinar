import 'package:culinar/design/colors.dart';
import 'package:culinar/feature/recipe/UI/screens/add_recipe_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/favorites_list_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/recipe_list_screen.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

class HomeScreen extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const HomeScreen({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeBloc(recipeRepository: recipeRepository)
        ..add(const LoadRecipes()),
      child: Scaffold(
        body: HomeScreenBody(),
      ),
    );
  }
}

List<String> categories = [
  'Завтрак',
  'Обед',
  'Ужин',
  'Десерт',
  'Салаты',
  'Закуски'
];

List<String> imagesCategories = [
  'assets/breakfast.jpg',
  'assets/Lunch.jpg',
  'assets/dinner.jpg',
  'assets/desserts.jpg',
  'assets/Salads.jpg',
  'assets/snacks.jpg'
];

void navigateToFavoritesScreen(BuildContext context) {
  User? currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Пользователь не авторизован'),
        backgroundColor: Colors.red,
      ),
    );
    if (kDebugMode) {
      print('Пользователь не авторизован');
    }
    return;
  }

  String userId = currentUser.uid; // Используйте UID текущего пользователя
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: BlocProvider.of<AuthBloc>(context),
        child: FavoritesListScreen(userId: userId),
      ),
    ),
  );
}


class HomeScreenBody extends StatelessWidget {
  final PageController _pageController = PageController();

  HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          snap: false,
          floating: false,
          pinned: true,
          automaticallyImplyLeading: false,
          expandedHeight: 500,
          flexibleSpace: FlexibleSpaceBar(
            background: BlocBuilder<RecipeBloc, RecipeState>(
              builder: (context, state) {
                if (state is RecipeLoading) {
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
                    ),
                  );
                } else if (state is RecipeCollectionsLoaded) {}
                return Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        3,
                        (i) => Stack(
                          children: [
                            Image.asset(
                              'assets/test_image.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 100, left: 20),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Подборка',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 15),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Out(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(80),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Colors.white,
                            dotColor: Colors.white.withOpacity(0.5),
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: BlocProvider.of<RecipeBloc>(context),
                    child: const RecipeSearchScreen(
                      category: '',
                    ),
                  ),
                ),
              ),
              child: Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: const Text(
                  'Что хотите приготовить?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Column(
                children: List.generate(
                  2,
                  (i) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (j) => GestureDetector(
                        onTap: () {
                          String category = categories[i * 3 + j];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider.value(
                                value: BlocProvider.of<RecipeBloc>(context),
                                child: RecipeSearchScreen(
                                  category: category,
                                ),
                              ),
                            ),
                          );
                        },
                        child: CategoryCard(
                          title: categories[i * 3 + j],
                          image: imagesCategories[i * 3 + j],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        'Добавить рецепт',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddRecipeScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Сервисы',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: ServiceCard(title: 'Избранное'),
                        onTap: () {
                          navigateToFavoritesScreen(context);
                        },
                      ),
                      // SizedBox(width: 10),
                      // ServiceCard(title: 'Подбор рецепта'),
                      SizedBox(width: 10),
                      ServiceCard(title: 'Мои рецепты'),
                      // SizedBox(width: 10),
                      // ServiceCard(title: 'Меню на неделю'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Сезонные продукты',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      4,
                      (i) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const Align(
                              alignment: Alignment.topLeft,
                              child: Text('Продукт')),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;

  const ServiceCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 110,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
        ),
        const SizedBox(
            height: 8), // добавить пространство между контейнером и текстом
        Flexible(
          child: Text(
            title,
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 110,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(alignment: Alignment.topLeft, child: Text(title))
        ],
      ),
    );
  }
}

class Out extends StatelessWidget {
  const Out({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const UserSignedOut());
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
    );
  }
}
