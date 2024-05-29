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
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Ингредиенты',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class WrapListIngredients extends StatelessWidget {
  final List<Map<String, dynamic>> selectedIngredients;
  final TextEditingController quantityController;
  final String dropdownValue;
  final ValueChanged<String?> onDropdownChanged;
  final ValueChanged<Map<String, dynamic>> onDelete;

  const WrapListIngredients({
    super.key,
    required this.selectedIngredients,
    required this.quantityController,
    required this.dropdownValue,
    required this.onDropdownChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: selectedIngredients.map((ingredient) {
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
                    child: Text(ingredient["title"],
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
                        ),
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    elevation: 16,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    underline: Container(height: 0),
                    onChanged: onDropdownChanged,
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    icon: arrowBottomIcon,
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

class ListIngredient extends StatefulWidget {
  const ListIngredient({super.key, required BuildContext context});

  @override
  State<ListIngredient> createState() => _ListIngredientState();
}

class _ListIngredientState extends State<ListIngredient> {
  List<Map<String, dynamic>> ingredientItems = [];
  List<Map<String, dynamic>> selectedIngredients = [];
  final TextEditingController _quantityIngredientController =
      TextEditingController();
  final TextEditingController _searchIngredientController =
      TextEditingController();
  final TextEditingController _addIngredientController =
      TextEditingController();
  String dropdownValue = list.first;

  @override
  void initState() {
    super.initState();
    _searchIngredientController.addListener(_onSearchChanged);
    BlocProvider.of<RecipeBloc>(context).add(const GetIngredients(''));
  }

void _onSearchChanged() {
  final query = _searchIngredientController.text.toLowerCase();
  BlocProvider.of<RecipeBloc>(context).add(SearchIngredient(query));
}


  @override
  void dispose() {
    _searchIngredientController.removeListener(_onSearchChanged);
    _quantityIngredientController.dispose();
    _searchIngredientController.dispose();
    super.dispose();
  }

  void _toggleIngredientSelection(Map<String, dynamic> ingredient) {
    setState(() {
      final isSelected = selectedIngredients
          .any((selected) => selected["title"] == ingredient["title"]);
      if (isSelected) {
        selectedIngredients.removeWhere(
            (selected) => selected["title"] == ingredient["title"]);
      } else {
        selectedIngredients.add(ingredient);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          IngredientSearchField(controller: _searchIngredientController),
          Expanded(
            child: BlocBuilder<RecipeBloc, RecipeState>(
  builder: (context, state) {
    if (state is Loading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is IngredientsLoaded) {
      ingredientItems = state.ingredients
          .map((ingredient) => {
                "title": ingredient.title,
                "isChecked": selectedIngredients.any((selected) =>
                    selected["title"] == ingredient.title)
              })
          .toList();
    } else if (state is Error) {
      return Center(child: Text(state.message));
    }

    return ListView(
      children: [
        ...ingredientItems.map((ingredient) {
          return CheckboxListTile(
            activeColor: primaryColor,
            checkboxShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            value: ingredient["isChecked"],
            title: Text(
              ingredient["title"],
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
                _toggleIngredientSelection(ingredient);
              });
            },
          );
        }),
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
                          )),
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
                                        // Преобразуем первую букву в верхний регистр
                                        String ingredientTitle = _addIngredientController.text.trim();
                                        if (ingredientTitle.isNotEmpty) {
                                          ingredientTitle = ingredientTitle[0].toUpperCase() + ingredientTitle.substring(1).toLowerCase();
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
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
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
              child: SelectedIngredientsWrap(
                selectedIngredients: selectedIngredients,
                quantityController: _quantityIngredientController,
                dropdownValue: dropdownValue,
                onDropdownChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                onDelete: (ingredient) {
                  setState(() {
                    _toggleIngredientSelection(ingredient);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


