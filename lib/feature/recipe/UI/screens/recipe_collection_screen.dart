import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:culinar/feature/recipe/UI/widgets/card_recipe_for_list.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeCollectionScreen extends StatefulWidget {
  final RecipeCollection collection;

  const RecipeCollectionScreen({super.key, required this.collection});

  @override
  State<RecipeCollectionScreen> createState() => _RecipeCollectionScreenState();
}

class _RecipeCollectionScreenState extends State<RecipeCollectionScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RecipeBloc>(context)
        .add(LoadRecipesForCollection(widget.collection.recipes));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state is Loading) {
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
          } else if (state is Loaded) {
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
                        if (widget.collection.recipeCollectionImage.isNotEmpty)
                          Image.network(widget.collection.recipeCollectionImage,
                              fit: BoxFit.cover),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 35, left: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: arrowLeftIcon,
                              ),
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
                                widget.collection.title,
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
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Описание',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(24)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  widget.collection.description,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 6.0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Подборка рецетов',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final recipe = state.recipes[index];
                      return CardRecipeForList(recipe: recipe);
                    },
                    childCount: state.recipes.length,
                  ),
                ),
              ],
            );
          } else if (state is Error) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
