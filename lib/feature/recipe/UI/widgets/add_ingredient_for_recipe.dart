import 'package:culinar/feature/recipe/UI/widgets/custom_text_field.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

class IngredientSearchField extends StatelessWidget {
  final TextEditingController controller;

  const IngredientSearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: 'Ингредиенты',
      maxLines: 1,
    );
  }
}

class ListIngredient extends StatefulWidget {
  final List<IngredientWithQuantity> ingredients;
  final ValueChanged<IngredientWithQuantity> onAdd;
  final ValueChanged<int> onDelete;

  const ListIngredient({
    super.key,
    required this.ingredients,
    required this.onAdd,
    required this.onDelete,
  });

  @override
  State<ListIngredient> createState() => _ListIngredientState();
}

class _ListIngredientState extends State<ListIngredient> {
  List<Ingredient> allIngredients = [];
  List<Measurement> measurements = [];
  final TextEditingController _searchIngredientController =
      TextEditingController();
  final TextEditingController _addIngredientController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchIngredientController.addListener(_onSearchChanged);

    final recipeBloc = BlocProvider.of<RecipeBloc>(context);
    recipeBloc.add(const GetIngredients(''));
    recipeBloc.add(const GetMeasurements(''));

    // Subscribing to ingredient updates from the Bloc
    recipeBloc.stream.listen((state) {
      if (state is IngredientsLoaded) {
        setState(() {
          allIngredients = List.from(state.ingredients);
        });
      }
    });

    // Subscribing to measurement updates from the Bloc
    recipeBloc.stream.listen((state) {
      if (state is MeasurementsLoaded) {
        setState(() {
          measurements = List.from(state.measurements);
        });
      }
    });
  }

  void _onSearchChanged() {
    final query = _searchIngredientController.text.toLowerCase();
    BlocProvider.of<RecipeBloc>(context).add(SearchIngredients(query));
  }

  @override
  void dispose() {
    _searchIngredientController.removeListener(_onSearchChanged);
    _searchIngredientController.dispose();
    _addIngredientController.dispose();
    super.dispose();
  }

  void _toggleIngredientSelection(Ingredient ingredient) {
    setState(() {
      final isSelected = widget.ingredients.any((selected) =>
          selected.ingredient.ingredientId == ingredient.ingredientId);
      if (isSelected) {
        final index = widget.ingredients.indexWhere((selected) =>
            selected.ingredient.ingredientId == ingredient.ingredientId);
        widget.onDelete(index);
      } else {
        widget.onAdd(IngredientWithQuantity(
          ingredient: ingredient,
          quantity: '',
          measurement: measurements.isNotEmpty
              ? measurements.first
              : const Measurement(measurementId: '', title: ''),
          ingredientWithQuantityId: '',
        ));
      }
    });
  }

  void _onUpdateQuantity(IngredientWithQuantity updatedIngredient) {
    setState(() {
      final index = widget.ingredients.indexWhere((selected) =>
          selected.ingredient.ingredientId ==
          updatedIngredient.ingredient.ingredientId);
      if (index != -1) {
        widget.ingredients[index] = updatedIngredient;
      }
    });
  }

  void _onUpdateMeasurement(IngredientWithQuantity updatedIngredient) {
    setState(() {
      final index = widget.ingredients.indexWhere((selected) =>
          selected.ingredient.ingredientId ==
          updatedIngredient.ingredient.ingredientId);
      if (index != -1) {
        widget.ingredients[index] = updatedIngredient;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Column(
        children: [
          IngredientSearchField(controller: _searchIngredientController),
          Expanded(
            child: BlocListener<RecipeBloc, RecipeState>(
              listener: (context, state) {
              if (state is IngredientAdded) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              } else if (state is Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Ошибка: ${state.message}')),
                );
              }
            },
              child: BlocBuilder<RecipeBloc, RecipeState>(
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
                  } else if (state is IngredientsLoaded) {
                    allIngredients = state.ingredients;
                  } else if (state is Error) {
                    return Center(child: Text(state.message));
                  }

                  final ingredientItems = allIngredients.map((ingredient) {
                    return {
                      "title": ingredient.title,
                      "isChecked": widget.ingredients.any((selected) =>
                          selected.ingredient.ingredientId ==
                          ingredient.ingredientId),
                    };
                  }).toList();

                  return ListView(
                    children: [
                      ...ingredientItems.map((ingredient) {
                        return CheckboxListTile(
                          activeColor: Theme.of(context).primaryColor,
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
                              final selectedIngredient =
                                  allIngredients.firstWhere(
                                      (i) => i.title == ingredient["title"]);
                              _toggleIngredientSelection(selectedIngredient);
                            });
                          },
                        );
                      }),
                      const SizedBox(height: 10),
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
                              Container(child: addIngredientIcon),
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
                                    textStyle: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                content: CustomTextField(
                                  controller: _addIngredientController,
                                  labelText: 'Например: "Картошка"',
                                  maxLines: 1,
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text(
                                      'Добавить',
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      final ingredientName =
                                          _addIngredientController.text;
                                      if (ingredientName.isNotEmpty) {
                                        final newIngredient = Ingredient(
                                          ingredientId:
                                              '', // Идентификатор будет присвоен в репозитории
                                          title: ingredientName,
                                        );
                                        BlocProvider.of<RecipeBloc>(context)
                                            .add(AddIngredient(newIngredient));
                                        _addIngredientController.clear();
                                        Navigator.of(context).pop();
                                      }
                                    },
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
          ),
          const Divider(),
          Expanded(
            child: widget.ingredients.isEmpty
                ? Center(
                    child: Text(
                    'Выберите ингредиенты',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: secondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ))
                : ListView.builder(
                    itemCount: widget.ingredients.length,
                    itemBuilder: (context, index) {
                      final selectedIngredient = widget.ingredients[index];
                      return IngredientWithQuantityRow(
                        key: ValueKey(
                            selectedIngredient.ingredient.ingredientId),
                        selectedIngredient: selectedIngredient,
                        measurements: measurements,
                        onQuantityChanged: (quantity) {
                          final updatedIngredient =
                              selectedIngredient.copyWith(quantity: quantity);
                          _onUpdateQuantity(updatedIngredient);
                        },
                        onMeasurementChanged: (measurement) {
                          final updatedIngredient = selectedIngredient.copyWith(
                              measurement: measurement);
                          _onUpdateMeasurement(updatedIngredient);
                        },
                        onIngredientDeleted: () {
                          setState(() {
                            widget.ingredients.removeAt(index);
                          });
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class IngredientWithQuantityRow extends StatefulWidget {
  final IngredientWithQuantity selectedIngredient;
  final List<Measurement> measurements;
  final ValueChanged<String> onQuantityChanged;
  final ValueChanged<Measurement> onMeasurementChanged;
  final VoidCallback onIngredientDeleted;

  const IngredientWithQuantityRow({
    super.key,
    required this.selectedIngredient,
    required this.measurements,
    required this.onQuantityChanged,
    required this.onMeasurementChanged,
    required this.onIngredientDeleted,
  });

  @override
  State<IngredientWithQuantityRow> createState() => _IngredientWithQuantityRowState();
}

class _IngredientWithQuantityRowState extends State<IngredientWithQuantityRow> {
  late List<Measurement> _measurements;

  @override
  void initState() {
    super.initState();
    _measurements = widget.measurements;
  }

  void _showMeasurementDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            'Выберите меру измерения',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          children: _measurements.map((measurement) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                widget.onMeasurementChanged(measurement);
              },
              child: Text(
                measurement.title,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.selectedIngredient.ingredient.title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 70,
            child: TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              decoration: InputDecoration(
                hintText: '0',
                hintStyle: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
              ),
              onChanged: widget.onQuantityChanged,
            ),
          ),
          SizedBox(
            width: 120,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print(_measurements);
                }
                _showMeasurementDialog(context);
              },
              child: Text(
                widget.selectedIngredient.measurement.title,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: secondaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: deleteIcon,
            onPressed: widget.onIngredientDeleted,
          ),
        ],
      ),
    );
  }
}

