import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:culinar/feature/recipe/UI/widgets/card_recipe_for_list.dart';

class RecipeCollectionScreen extends StatefulWidget {
  final RecipeCollection collection;

  const RecipeCollectionScreen({Key? key, required this.collection}) : super(key: key);

  @override
  _RecipeCollectionScreenState createState() => _RecipeCollectionScreenState();
}

class _RecipeCollectionScreenState extends State<RecipeCollectionScreen> {
@override
void initState() {
  super.initState();
  BlocProvider.of<RecipeBloc>(context).add(LoadRecipesForCollection(widget.collection.recipes));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.title),
      ),
      body: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            return ListView.builder(
              itemCount: state.recipes.length,
              itemBuilder: (context, index) {
                final recipe = state.recipes[index];
                return CardRecipeForList(recipe: recipe);
              },
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
