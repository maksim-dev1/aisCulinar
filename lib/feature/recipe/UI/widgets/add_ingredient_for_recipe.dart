import 'package:culinar/feature/recipe/UI/widgets/add_recipe_text_filed.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class IngredientSearchField extends StatelessWidget {
  final TextEditingController controller;

  const IngredientSearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AddRecipeTextFiled(
        controller: controller, labelText: 'Ингредиенты', maxLines: 1);
  }
}

class ListIngredient extends StatefulWidget {
  const ListIngredient({super.key, required BuildContext context});

  @override
  State<ListIngredient> createState() => _ListIngredientState();
}

class _ListIngredientState extends State<ListIngredient> {
  List<Ingredient> ingredients = [];
  List<IngredientWithQuantity> selectedIngredients = [];
  final TextEditingController _searchIngredientController =
      TextEditingController();
  final TextEditingController _addIngredientController =
      TextEditingController();
  List<Measurement> measurements = [];

  @override
  void initState() {
    super.initState();
    _searchIngredientController.addListener(_onSearchChanged);
    BlocProvider.of<RecipeBloc>(context).add(const GetIngredients(''));
    BlocProvider.of<RecipeBloc>(context).add(const GetMeasurements(''));
    BlocProvider.of<RecipeBloc>(context).stream.listen((state) {
      if (state is IngredientsLoaded) {
        setState(() {
          ingredients = state.ingredients;
        });
      } else if (state is MeasurementsLoaded) {
        setState(() {
          measurements = state.measurements;
        });
      }
    });
  }

  void _onSearchChanged() {
    final query = _searchIngredientController.text.toLowerCase();
    BlocProvider.of<RecipeBloc>(context).add(SearchIngredient(query));
  }

  @override
  void dispose() {
    _searchIngredientController.removeListener(_onSearchChanged);
    _searchIngredientController.dispose();
    super.dispose();
  }

  void _toggleIngredientSelection(Ingredient ingredient) {
    setState(() {
      final isSelected = selectedIngredients.any((selected) =>
          selected.ingredient.ingredientId == ingredient.ingredientId);
      if (isSelected) {
        selectedIngredients.removeWhere((selected) =>
            selected.ingredient.ingredientId == ingredient.ingredientId);
      } else {
        selectedIngredients.add(IngredientWithQuantity(
          ingredient: ingredient,
          quantity: '',
          measurementId:
              measurements.isNotEmpty ? measurements.first.measurementId : '',
          recipeId: '',
        ));
      }
    });
  }

  void _onUpdateQuantity(IngredientWithQuantity updatedIngredient) {
    setState(() {
      final index = selectedIngredients.indexWhere((selected) =>
          selected.ingredient.ingredientId ==
          updatedIngredient.ingredient.ingredientId);
      if (index != -1) {
        selectedIngredients[index] = updatedIngredient;
      }
    });
  }

  void _onUpdateMeasurement(IngredientWithQuantity updatedIngredient) {
    setState(() {
      final index = selectedIngredients.indexWhere((selected) =>
          selected.ingredient.ingredientId ==
          updatedIngredient.ingredient.ingredientId);
      if (index != -1) {
        selectedIngredients[index] = updatedIngredient;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          IngredientSearchField(controller: _searchIngredientController),
          Expanded(
            child: BlocBuilder<RecipeBloc, RecipeState>(
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is IngredientsLoaded) {
                  ingredients = state.ingredients;
                } else if (state is Error) {
                  return Center(child: Text(state.message));
                }

                final ingredientItems = ingredients
                    .map((ingredient) => {
                          "title": ingredient.title,
                          "isChecked": selectedIngredients.any((selected) =>
                              selected.ingredient.ingredientId ==
                              ingredient.ingredientId)
                        })
                    .toList();

                return ListView(
                  children: [
                    ...ingredientItems.map((ingredient) {
                      return CheckboxListTile(
                        activeColor: primaryColor,
                        checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: ingredient["isChecked"] as bool,
                        title: Text(
                          ingredient["title"] as String,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            ingredient["isChecked"] = val!;
                            final selectedIngredient = ingredients.firstWhere(
                                (i) => i.title == ingredient["title"]);
                            _toggleIngredientSelection(selectedIngredient);
                          });
                        },
                      );
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 32.5),
                        child: Row(
                          children: [
                            Text(
                              'Добавить ингредиент',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            addIngredientIcon
                          ],
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 24.0,
                              title: Text(
                                'Введите название ингредиента',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              content: TextField(
                                controller: _addIngredientController,
                                decoration: const InputDecoration(
                                  labelText: 'Например: Картофель',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: Text(
                                    'Добавить',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  onPressed: () async {
                                    try {
                                      String ingredientTitle =
                                          _addIngredientController.text.trim();
                                      if (ingredientTitle.isNotEmpty) {
                                        ingredientTitle =
                                            ingredientTitle[0].toUpperCase() +
                                                ingredientTitle
                                                    .substring(1)
                                                    .toLowerCase();
                                      }

                                      Ingredient newIngredient = Ingredient(
                                        title: ingredientTitle,
                                        ingredientId: '',
                                      );

                                      final recipeBloc =
                                          context.read<RecipeBloc>();
                                      recipeBloc
                                          .add(AddIngredient(newIngredient));

                                      Navigator.of(context).pop();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Не удалось добавить ингредиент: $e'),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Отмена',
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: WrapListIngredients(
                selectedIngredients: selectedIngredients,
                onUpdateQuantity: _onUpdateQuantity,
                onUpdateMeasurement: _onUpdateMeasurement,
                onDelete: (ingredient) {
                  setState(() {
                    selectedIngredients.removeWhere((selected) =>
                        selected.ingredient.ingredientId ==
                        ingredient.ingredientId);
                  });
                },
                measurements: measurements,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WrapListIngredients extends StatelessWidget {
  final List<IngredientWithQuantity> selectedIngredients;
  final ValueChanged<IngredientWithQuantity> onUpdateQuantity;
  final ValueChanged<IngredientWithQuantity> onUpdateMeasurement;
  final ValueChanged<Ingredient> onDelete;
  final List<Measurement> measurements;

  const WrapListIngredients({
    super.key,
    required this.selectedIngredients,
    required this.onUpdateQuantity,
    required this.onUpdateMeasurement,
    required this.onDelete,
    required this.measurements,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: selectedIngredients.map((ingredientWithQuantity) {
        final ingredient = ingredientWithQuantity.ingredient;
        final quantityController =
            TextEditingController(text: ingredientWithQuantity.quantity);
        return Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(ingredient.title,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: IntrinsicWidth(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 35,
                          maxWidth: 100,
                        ),
                        child: TextField(
                          controller: quantityController,
                          cursorHeight: 18,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            labelText: '0',
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 6.0,
                              horizontal: 10,
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).secondaryHeaderColor,
                                width: 2.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                          onChanged: (value) {
                            onUpdateQuantity(ingredientWithQuantity.copyWith(
                                quantity: value));
                          },
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final selected = await showDialog<String>(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            title: const Text('Выберите меру измерения'),
                            children:
                                measurements.map<Widget>((Measurement value) {
                              return SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context, value.measurementId);
                                },
                                child: Text(value.title),
                              );
                            }).toList(),
                          );
                        },
                      );

                      if (selected != null && selected.isNotEmpty) {
                        onUpdateMeasurement(ingredientWithQuantity.copyWith(
                            measurementId: selected));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        measurements
                            .firstWhere(
                                (m) =>
                                    m.measurementId ==
                                    ingredientWithQuantity.measurementId,
                                orElse: () => measurements.first)
                            .title,
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
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => onDelete(ingredient),
                    child: deleteIcon,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 5)
          ],
        );
      }).toList(),
    );
  }
}
