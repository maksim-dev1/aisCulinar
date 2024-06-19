import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/auth/bloc/auth_bloc.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_reting_for_recipe.dart';
import 'package:culinar/feature/recipe/data/repositories/recipe_repository.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

class RecipeDetailScreen extends StatelessWidget {
  final String recipeId;

  const RecipeDetailScreen({super.key, required this.recipeId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeBloc(
        recipeRepository: RepositoryProvider.of<RecipeRepository>(context),
      )..add(LoadRecipeDetail(recipeId)),
      child: Scaffold(
        body: RecipeDetailView(recipeId: recipeId),
      ),
    );
  }
}

class RecipeDetailView extends StatefulWidget {
  final String recipeId;

  const RecipeDetailView({super.key, required this.recipeId});

  @override
  State<RecipeDetailView> createState() => _RecipeDetailViewState();
}

class _RecipeDetailViewState extends State<RecipeDetailView> {
  double _selectedRating = 0;
  int _totalRating = 0;
  String _commentText = '';
  MyUser? _myUser;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _initializeFavoriteState();
  }

  void _initializeFavoriteState() {
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthAuthenticated) {
      setState(() {
        _myUser = authState.user;
        isFavorite = authState.user.recipeIds.containsKey(widget.recipeId);
      });
    }
  }

  void _toggleFavorite() {
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthAuthenticated) {
      final user = authState.user;
      if (kDebugMode) {
        print('Пользователь: ${user}');
      }
      if (kDebugMode) {
        print('Состояние: ${authState}');
      }
      // Проверяем и обновляем состояние избранного
      _updateFavoriteState(user.userId, !isFavorite);
    } else {
      if (kDebugMode) {
        print('Состояние: ${authState}');
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Войдите, чтобы добавлять в избранное')),
      );
    }
  }

  void _updateFavoriteState(String userId, bool addToFavorites) {
    if (addToFavorites) {
      context.read<AuthBloc>().add(AddToFavorites(userId, widget.recipeId));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            backgroundColor: Colors.green,
            content: Text('Рецепт добавлен в избранное')),
      );
    } else {
      context
          .read<AuthBloc>()
          .add(RemoveFromFavorites(userId, widget.recipeId));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Рецепт удалён из избранного')),
      );
    }
  }

  void _addCommentAndRating() {
    if (_selectedRating > 0 && _commentText.isNotEmpty && _myUser != null) {
      final recipeState = context.read<RecipeBloc>().state;

      if (recipeState is RecipeDetailLoaded) {
        final recipe = recipeState.recipe;
        final newComment = Comment(
          commentId: '',
          userId: _myUser!.userId,
          userName: _myUser!.name,
          comment: _commentText,
          time: DateTime.now(),
          recipeId: recipe.recipeId,
        );

        final newRating = Rating(
          overallRating: _selectedRating,
          ratingId: '',
          userId: _myUser!.userId,
          totalRatings: _totalRating,
        );

        try {
          context
              .read<RecipeBloc>()
              .add(AddComment(recipeId: recipe.recipeId, comment: newComment));
          context
              .read<RecipeBloc>()
              .add(AddRating(recipeId: recipe.recipeId, rating: newRating));

          setState(() {
            _selectedRating = 0;
            _commentText = '';
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                backgroundColor: Colors.green,
                content: Text('Комментарий и рейтинг добавлены успешно.')),
          );
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                backgroundColor: Colors.red,
                content: Text('Ошибка при добавлении комментария и рейтинга.')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthenticated) {
          setState(() {
            _myUser = state.user;
            isFavorite = state.user.recipeIds.containsKey(widget.recipeId);
          });
        } else {
          setState(() {
            _myUser = null;
            isFavorite = false;
          });
        }
      },
      child: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state is InitialRecipe || state is RecipeLoading) {
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
          } else if (state is RecipeDetailLoaded) {
            final recipe = state.recipe;
            final ingredients = state.ingredients;
            final steps = state.steps;
            final comments = state.recipe.comments;
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
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        if (recipe.imageUrl.isNotEmpty)
                          Image.network(recipe.imageUrl, fit: BoxFit.cover),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: arrowLeftIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(30),
                    child: Container(
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 5, right: 30),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.6,
                              ),
                              child: Text(
                                recipe.title,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 5),
                            child: IconButton(
                              onPressed: _toggleFavorite,
                              icon: isFavorite
                                  ? favoriteFilledIcon
                                  : favoriteEmptyIcon,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Container(child: timerIcon),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${recipe.cookingTime} мин',
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: AddStarRating(
                                      initialRating:
                                          recipe.rating.overallRating,
                                      fullStarGrey: emptyStar,
                                      fullStarYellow: fullStar,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Описание рецепта',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 9),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Text(
                                      recipe.description,
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 22),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Ингредиенты',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 9),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Column(
                                      children: [
                                        ...ingredients.map((ingredient) {
                                          return Row(
                                            children: [
                                              Text(
                                                ingredient['ingredientName'],
                                                style: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              const Expanded(child: SizedBox()),
                                              Text(
                                                ingredient['quantity'],
                                                style: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                ingredient['measurement'],
                                                style: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 22),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Способ приготовления',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 9),
                            ...steps.map((step) {
                              return Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Text(
                                                  '${step['stepNumber']} Шаг',
                                                  style: GoogleFonts.inter(
                                                    textStyle: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        if (step['image'].isNotEmpty)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Container(
                                              width: double.infinity,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                                child: Image.network(
                                                  step['image'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        const SizedBox(height: 20),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(24)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Text(
                                                step['description'],
                                                style: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              );
                            }),
                            const SizedBox(height: 25),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Добавить отзыв',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 12),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Ваш рейтинг:',
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: AddStarRating(
                                          initialRating: _selectedRating,
                                          fullStarGrey: emptyStar,
                                          fullStarYellow: fullStar,
                                          size: 40,
                                          onRatingChanged: (rating) {
                                            setState(() {
                                              _selectedRating = rating
                                                  .floorToDouble();
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextField(
                                          maxLines: 5,
                                          onChanged: (value) {
                                            setState(() {
                                              _commentText = value;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Введите ваш комментарий',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      ElevatedButton(
                                        onPressed: _addCommentAndRating,
                                        child: Text(
                                          'Отправить',
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Отзывы',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 9),
                            ...comments.map((comment) {
                              return Column(
                                children: [
                                  const Divider(),
                                  Row(
                                    children: [
                                      const Icon(Icons.person, size: 40),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            comment.userName,
                                            style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            comment.comment,
                                            style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            '${comment.time.day}.${comment.time.month}.${comment.time.year} ${comment.time.hour}:${comment.time.minute}',
                                            style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            );
          } else if (state is Error) {
            if (kDebugMode) {
              print('Ошибка загрузки рецепта: ${state.message}');
            }
            return Center(
                child: Text('Ошибка загрузки рецепта: ${state.message}'));
          } else {
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
          }
        },
      ),
    );
  }
}