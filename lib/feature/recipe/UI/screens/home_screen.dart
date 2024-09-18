import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/screens/add_recipe_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/favorites_list_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/profile_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/recipe_collection_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/recipes_search_screen.dart';
import 'package:culinar/feature/recipe/UI/screens/sesonal_product_scren.dart';
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
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const HomeScreen({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RecipeBloc(recipeRepository: recipeRepository)
            ..add(const LoadRecipeCollections()),
        ),
        BlocProvider(
          create: (context) =>
              SesonalProductBloc(recipeRepository: recipeRepository)
                ..add(const LoadSeasonalProducts()),
        ),
      ],
      child: Scaffold(
        body: HomeScreenBody(
          recipeRepository: recipeRepository,
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const HomeScreenBody({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

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
                  return _buildLoadingDialog(context);
                } else if (state is RecipeCollectionsLoaded) {
                  if (kDebugMode) {
                    print('State collection: ${state.collections}');
                  }
                  return _buildRecipeCollections(
                      context, state.collections, pageController);
                } else if (state is Error) {
                  return Center(child: Text(state.message));
                }
                return Container();
              },
            ),
          ),
          bottom: _buildSearchBar(context),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              _buildQueryPrompt(),
              _buildCategoryRow(context),
              _buildAddRecipeButton(context),
              _buildServices(context),
              BlocBuilder<SesonalProductBloc, RecipeState>(
                builder: (context, state) {
                  if (state is SeasonalProductsLoaded) {
                    if (kDebugMode) {
                      print('State products: ${state.seasonalProducts}');
                    }
                    return _buildSeasonalProducts(
                        context, state.seasonalProducts);
                  } else if (state is Error) {
                    return Center(child: Text(state.message));
                  }
                  return Container();
                },
              ),
            ]),
          ),
        ])),
      ],
    );
  }

  Widget _buildRecipeCollections(BuildContext context,
      List<RecipeCollection> collections, PageController pageController) {
    if (kDebugMode) {
      print('UI: Building ${collections.length} recipe collections');
    }
    for (var collection in collections) {
      if (kDebugMode) {
        print('UI: Collection data: ${collection.toJson()}');
      }
    }

    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: collections.length,
          itemBuilder: (context, index) {
            final collection = collections[index];
            print('UI: Building collection item: ${collection.title}');
            return GestureDetector(
              onTap: () {
                print('UI: Tapped on collection: ${collection.title}');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeCollectionScreen(collection: collection),
                  ),
                );
              },
              child: Stack(
                children: [
                  Image.network(
                    collection.recipeCollectionImage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
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
                    },
                    errorBuilder: (context, error, stackTrace) {
                      print('UI: Error loading image: $error');
                      return const Center(
                        child: Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100, left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        collection.title,
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
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35, right: 15),
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                icon: profileIcon,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(80),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: pageController,
              count: collections.length,
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
  }

  Widget _buildLoadingDialog(BuildContext context) {
    return Center(
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AlertDialog(
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
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Поиск...',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: searchIcon,
                    ),
                  ),
                ],
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
      child: Text(
        'Что хотите приготовить?',
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
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
      'assets/images/breakfast_button.jpg',
      'assets/images/lunch_button.jpg',
      'assets/images/dinner_button.jpg',
      'assets/images/dessert_button.jpg',
      'assets/images/salad_button .jpg',
      'assets/images/snacks_button.jpg'
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
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: InkWell(
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/add_recipe_button.jpg',
                fit: BoxFit.cover,
              )),
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
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  child: const ServiceCard(
                    image: 'assets/images/favorite_button.jpg',
                  ),
                  onTap: () {
                    navigateToFavoriteRecipesScreen(context);
                  },
                ),
                const SizedBox(width: 10),
                InkWell(
                  child: const ServiceCard(
                    image: 'assets/images/my_recipe_button.jpg',
                  ),
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

  Widget _buildSeasonalProducts(
      BuildContext context, List<SeasonalProduct> seasonalProducts) {
    if (kDebugMode) {
      print('UI: Building ${seasonalProducts.length} seasonal products');
    }
    for (var product in seasonalProducts) {
      if (kDebugMode) {
        print('UI: Product data: ${product.toJson()}');
      }
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, bottom: 15),
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: seasonalProducts.length,
              itemBuilder: (context, index) {
                final product = seasonalProducts[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => SesonalProductBloc(
                                    recipeRepository: recipeRepository)
                                  ..add(LoadSeasonalProductDetail(
                                      product.productId)),
                                child: SeasonalProductDetailScreen(
                                  productId: product.productId,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(product.productIdImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        product.title,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

void navigateToFavoriteRecipesScreen(BuildContext context) {
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
        value: BlocProvider.of<RecipeBloc>(context),
        child: FavoriteRecipesScreen(userId: userId),
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
        value: BlocProvider.of<RecipeBloc>(context)
          ..add(GetFavoriteRecipes(userId)),
        child: UserRecipesListScreen(userId: userId),
      ),
    ),
  );
}

class ServiceCard extends StatelessWidget {
  //final String title;
  final String image;

  const ServiceCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 110,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
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
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
