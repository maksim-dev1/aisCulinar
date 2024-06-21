import 'package:culinar/feature/recipe/UI/screens/add_recipe_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/favorites_list_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/recipe_collection_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/recipe_list_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/user_recipe_list_screen.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

class HomeScreen extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const HomeScreen({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeBloc(recipeRepository: recipeRepository)
        ..add(const LoadRecipeCollections()),
      child: Scaffold(
        body: HomeScreenBody(),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
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
                  print('UI: Loading state');
                  return _buildLoadingDialog(context);
                } else if (state is RecipeCollectionsLoaded) {
                  print('UI: RecipeCollectionsLoaded state with ${state.collections.length} collections');
                  return _buildRecipeCollections(state.collections);
                } else if (state is Error) {
                  print('UI: Error state with message: ${state.message}');
                  return Center(child: Text(state.message));
                }
                print('UI: Unexpected state: $state');
                return Container();
              },
            ),
          ),
          bottom: _buildSearchBar(context),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            _buildQueryPrompt(),
            _buildCategoryRow(context),
            _buildAddRecipeButton(context),
            _buildServices(context),
            _buildSeasonalProducts(),
          ]),
        ),
      ],
    );
  }

   Widget _buildRecipeCollections(List<RecipeCollection> collections) {
    return ListView.builder(
      itemCount: collections.length,
      itemBuilder: (context, index) {
        final collection = collections[index];
        print('UI: Building collection item: ${collection.title}');
        return ListTile(
          leading: Image.network(collection.recipeCollectionImage),
          title: Text(collection.title),
          subtitle: Text(collection.description),
          onTap: () {
            print('UI: Tapped on collection: ${collection.title}');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeCollectionScreen(collection: collection),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildLoadingDialog(BuildContext context) {
    return const Center(
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(
              color: Colors.red,
            ),
            SizedBox(height: 16),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildSearchBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(30),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: BlocProvider.of<RecipeBloc>(context),
              child: const RecipeSearchScreen(category: ''),
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
    );
  }

  Widget _buildQueryPrompt() {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: const Text(
        'Что хотите приготовить?',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildCategoryRow(BuildContext context) {
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

    return Column(
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
    );
  }

  Widget _buildAddRecipeButton(BuildContext context) {
    return Padding(
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
    );
  }

  Widget _buildServices(BuildContext context) {
    return Column(
      children: [
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
                  child: const ServiceCard(title: 'Избранное'),
                  onTap: () {
                    navigateToFavoritesScreen(context);
                  },
                ),
                const SizedBox(width: 10),
                InkWell(
                  child: const ServiceCard(title: 'Мои рецепты'),
                  onTap: () {
                    navigateToUserRecipesScreen(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSeasonalProducts() {
    return Column(
      children: [
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
                        alignment: Alignment.topLeft, child: Text('Продукт')),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

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

  void navigateToUserRecipesScreen(BuildContext context) {
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

    String userId = currentUser.uid;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: BlocProvider.of<AuthBloc>(context),
          child: UserRecipesListScreen(userId: userId),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;

  const ServiceCard({Key? key, required this.title}) : super(key: key);

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

  const CategoryCard({Key? key, required this.title, required this.image})
      : super(key: key);

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
          Align(alignment: Alignment.topLeft, child: Text(title)),
        ],
      ),
    );
  }
}

class Out extends StatelessWidget {
  const Out({Key? key}) : super(key: key);

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
