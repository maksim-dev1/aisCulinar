import 'package:culinar/feature/recipe/UI/widgets/add_recipe_text_filed.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

// class IngredientSearchField extends StatelessWidget {
//   final TextEditingController controller;

//   const IngredientSearchField({super.key, required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return AddRecipeTextFiled(
//       controller: controller,
//       labelText: 'Ингредиенты',
//       maxLines: 1,
//     );
//   }
// }

// class ListIngredient extends StatefulWidget {
//   const ListIngredient({
//     super.key,
//     required this.context,
//     required this.ingredients,
//     required this.onAdd,
//     required this.onDelete,
//   });

//   final BuildContext context;
//   final List<IngredientWithQuantity> ingredients;
//   final Function(IngredientWithQuantity) onAdd;
//   final Function(int) onDelete;

//   @override
//   State<ListIngredient> createState() => _ListIngredientState();
// }

// class _ListIngredientState extends State<ListIngredient> {
//   List<Ingredient> ingredients = [];
//   List<IngredientWithQuantity> selectedIngredients = [];
//   final TextEditingController _searchIngredientController = TextEditingController();
//   final TextEditingController _addIngredientController = TextEditingController();
//   List<Measurement> measurements = [];

//   @override
//   void initState() {
//     super.initState();
//     _searchIngredientController.addListener(_onSearchChanged);
//     BlocProvider.of<RecipeBloc>(context).add(const GetIngredients(''));
//     BlocProvider.of<RecipeBloc>(context).add(const GetMeasurements(''));
//     _initBlocListeners();
//   }

// void _initBlocListeners() {
//   BlocProvider.of<RecipeBloc>(context).stream.listen((state) {
//     if (!mounted) return;
//     setState(() {
//       if (state is IngredientsLoaded) {
//         ingredients = state.ingredients;
//         // Дополнительная инициализация списка ингредиентов
//         selectedIngredients = state.ingredients.map((ingredient) => IngredientWithQuantity(
//           ingredient: ingredient,
//           quantity: '',
//           measurement: measurements.isNotEmpty ? measurements.first : const Measurement(measurementId: '', title: ''),
//           recipeId: '',
//         )).toList();
//       } else if (state is MeasurementsLoaded) {
//         measurements = state.measurements;
//       }
//     });
//   });
// }

//   void _onSearchChanged() {
//     final query = _searchIngredientController.text.toLowerCase();
//     BlocProvider.of<RecipeBloc>(context).add(SearchIngredients(query));
//   }

//   @override
//   void dispose() {
//     _searchIngredientController.removeListener(_onSearchChanged);
//     _searchIngredientController.dispose();
//     super.dispose();
//   }

//   void _toggleIngredientSelection(Ingredient ingredient) {
//     setState(() {
//       final isSelected = selectedIngredients.any((selected) =>
//           selected.ingredient.ingredientId == ingredient.ingredientId);
//       if (isSelected) {
//         selectedIngredients.removeWhere((selected) =>
//             selected.ingredient.ingredientId == ingredient.ingredientId);
//       } else {
//         selectedIngredients.add(IngredientWithQuantity(
//           ingredient: ingredient,
//           quantity: '',
//           measurement: measurements.isNotEmpty
//               ? measurements.first
//               : const Measurement(measurementId: '', title: ''),
//           recipeId: '',
//         ));
//       }
//     });
//   }

//   void _onUpdateQuantity(IngredientWithQuantity updatedIngredient) {
//     setState(() {
//       final index = selectedIngredients.indexWhere((selected) =>
//           selected.ingredient.ingredientId == updatedIngredient.ingredient.ingredientId);
//       if (index != -1) {
//         selectedIngredients[index] = updatedIngredient;
//       }
//     });
//   }

//   void _onUpdateMeasurement(IngredientWithQuantity updatedIngredient) {
//     setState(() {
//       final index = selectedIngredients.indexWhere((selected) =>
//           selected.ingredient.ingredientId == updatedIngredient.ingredient.ingredientId);
//       if (index != -1) {
//         selectedIngredients[index] = updatedIngredient;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 500,
//       child: Column(
//         children: [
//           IngredientSearchField(controller: _searchIngredientController),
//           Expanded(
//             child: BlocBuilder<RecipeBloc, RecipeState>(
//               builder: (context, state) {
//                 if (state is Loading) {
//                   return const Center(child: CircularProgressIndicator());
//                 } else if (state is IngredientsLoaded) {
//                   ingredients = state.ingredients;
//                 } else if (state is Error) {
//                   return Center(child: Text(state.message));
//                 }

//                 final ingredientItems = ingredients.map((ingredient) {
//                   return {
//                     "title": ingredient.title,
//                     "isChecked": selectedIngredients.any((selected) =>
//                         selected.ingredient.ingredientId == ingredient.ingredientId)
//                   };
//                 }).toList();

//                 return ListView(
//                   children: [
//                     ...ingredientItems.map((ingredient) {
//                       return CheckboxListTile(
//                         activeColor: primaryColor,
//                         checkboxShape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         value: ingredient["isChecked"] as bool,
//                         title: Text(
//                           ingredient["title"] as String,
//                           style: GoogleFonts.inter(
//                             textStyle: const TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                         onChanged: (val) {
//                           setState(() {
//                             ingredient["isChecked"] = val!;
//                             final selectedIngredient = ingredients.firstWhere(
//                                 (i) => i.title == ingredient["title"]);
//                             _toggleIngredientSelection(selectedIngredient);
//                           });
//                         },
//                       );
//                     }),
//                     const SizedBox(height: 10),
//                     InkWell(
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 15, right: 32.5),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Добавить ингредиент',
//                               style: GoogleFonts.inter(
//                                 textStyle: const TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             const Expanded(child: SizedBox()),
//                             addIngredientIcon,
//                           ],
//                         ),
//                       ),
//                       onTap: () {
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               elevation: 24.0,
//                               title: Text(
//                                 'Введите название ингредиента',
//                                 style: GoogleFonts.inter(
//                                   textStyle: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w900,
//                                   ),
//                                 ),
//                               ),
//                               content: TextField(
//                                 controller: _addIngredientController,
//                                 decoration: const InputDecoration(
//                                   labelText: 'Например: Картофель',
//                                   border: OutlineInputBorder(),
//                                 ),
//                               ),
//                               actions: [
//                                 TextButton(
//                                   child: Text(
//                                     'Добавить',
//                                     style: GoogleFonts.inter(
//                                       textStyle: TextStyle(
//                                         color: secondaryColor,
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w700,
//                                       ),
//                                     ),
//                                   ),
//                                   onPressed: () async {
//                                     try {
//                                       String ingredientTitle = _addIngredientController.text.trim();
//                                       if (ingredientTitle.isNotEmpty) {
//                                         ingredientTitle = ingredientTitle[0].toUpperCase() +
//                                             ingredientTitle.substring(1).toLowerCase();
//                                       }

//                                       Ingredient newIngredient = Ingredient(
//                                         title: ingredientTitle,
//                                         ingredientId: '',
//                                       );

//                                       final recipeBloc = context.read<RecipeBloc>();
//                                       recipeBloc.add(AddIngredient(newIngredient));

//                                       Navigator.of(context).pop();
//                                     } catch (e) {
//                                       ScaffoldMessenger.of(context).showSnackBar(
//                                         SnackBar(
//                                           content: Text('Не удалось добавить ингредиент: $e'),
//                                           backgroundColor: Colors.red,
//                                         ),
//                                       );
//                                     }
//                                   },
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text(
//                                     'Отмена',
//                                     style: GoogleFonts.inter(
//                                       textStyle: const TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w700,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           const Divider(),
//           Expanded(
//             child: SingleChildScrollView(
//               child: WrapListIngredients(
//                 selectedIngredients: selectedIngredients,
//                 onUpdateQuantity: _onUpdateQuantity,
//                 onUpdateMeasurement: _onUpdateMeasurement,
//                 onDelete: (ingredient) {
//                   setState(() {
//                     selectedIngredients.removeWhere((selected) =>
//                         selected.ingredient.ingredientId == ingredient.ingredientId);
//                   });
//                 },
//                 measurements: measurements,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WrapListIngredients extends StatelessWidget {
//   final List<IngredientWithQuantity> selectedIngredients;
//   final ValueChanged<IngredientWithQuantity> onUpdateQuantity;
//   final ValueChanged<IngredientWithQuantity> onUpdateMeasurement;
//   final ValueChanged<Ingredient> onDelete;
//   final List<Measurement> measurements;

//   const WrapListIngredients({
//     super.key,
//     required this.selectedIngredients,
//     required this.onUpdateQuantity,
//     required this.onUpdateMeasurement,
//     required this.onDelete,
//     required this.measurements,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(      children: selectedIngredients.map((ingredientWithQuantity) {
//         final ingredient = ingredientWithQuantity.ingredient;
//         final quantityController = TextEditingController(text: ingredientWithQuantity.quantity);

//         return Column(
//           children: [
//             Container(
//               height: 40,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Text(
//                       ingredient.title,
//                       style: GoogleFonts.inter(
//                         textStyle: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 15,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Expanded(child: SizedBox()),
//                   SizedBox(
//                     width: 100,
//                     height: 40,
//                     child: TextField(
//                       controller: quantityController,
//                       keyboardType: TextInputType.number,
//                       decoration: const InputDecoration(
//                         hintText: 'Кол-во',
//                         contentPadding: EdgeInsets.all(10),
//                       ),
//                       onChanged: (value) {
//                         onUpdateQuantity(
//                           ingredientWithQuantity.copyWith(quantity: value),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   SizedBox(
//                     width: 70,
//                     height: 40,
//                     child: DropdownButtonFormField<Measurement>(
//                       value: ingredientWithQuantity.measurement,
//                       onChanged: (value) {
//                         onUpdateMeasurement(
//                           ingredientWithQuantity.copyWith(measurement: value!),
//                         );
//                       },
//                       items: measurements.map((measurement) {
//                         return DropdownMenuItem<Measurement>(
//                           value: measurement,
//                           child: Text(
//                             measurement.title,
//                             style: const TextStyle(fontSize: 15),
//                           ),
//                         );
//                       }).toList(),
//                       decoration: const InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   IconButton(
//                     icon: const Icon(Icons.delete, color: Colors.red),
//                     onPressed: () {
//                       onDelete(ingredient);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 5),
//           ],
//         );
//       }).toList(),
//     );
//   }
// }

class IngredientSearchField extends StatelessWidget {
  final TextEditingController controller;

  const IngredientSearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AddRecipeTextFiled(
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

    // Subscribing to measurement updates from the Bloc
    recipeBloc.stream.listen((state) {
      if (state is MeasurementsLoaded) {
        setState(() {
          measurements = state.measurements;
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
          recipeId: '',
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
            child: BlocBuilder<RecipeBloc, RecipeState>(
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
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
                              content: AddRecipeTextFiled(
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
                                      setState(() {
                                        final newIngredient = Ingredient(
                                          ingredientId: ingredientName,
                                          title: ingredientName,
                                        );
                                        allIngredients.add(newIngredient);
                                        _toggleIngredientSelection(
                                            newIngredient);
                                      });
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
  State<IngredientWithQuantityRow> createState() =>
      _IngredientWithQuantityRowState();
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
                keyboardType: TextInputType.number,
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
              )),
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












// class WrapListIngredients extends StatelessWidget {
//   final List<IngredientWithQuantity> selectedIngredients;
//   final ValueChanged<IngredientWithQuantity> onUpdateQuantity;
//   final ValueChanged<IngredientWithQuantity> onUpdateMeasurement;
//   final ValueChanged<Ingredient> onDelete;
//   final List<Measurement> measurements;

//   const WrapListIngredients({
//     super.key,
//     required this.selectedIngredients,
//     required this.onUpdateQuantity,
//     required this.onUpdateMeasurement,
//     required this.onDelete,
//     required this.measurements,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 8.0,
//       runSpacing: 4.0,
//       children: selectedIngredients.map((ingredient) {
//         return InputChip(
//           label: Column(
//             children: [
//               Text(
//                 ingredient.ingredient.title,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               TextField(
//                 onChanged: (value) {
//                   final updatedIngredient = IngredientWithQuantity(
//                     ingredient: ingredient.ingredient,
//                     quantity: value,
//                     measurement: ingredient.measurement,
//                     recipeId: ingredient.recipeId,
//                     ingredientWithQuantityId: ingredient.ingredientWithQuantityId,
//                   );
//                   onUpdateQuantity(updatedIngredient);
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'Количество',
//                 ),
//               ),
//               DropdownButton<Measurement>(
//                 value: ingredient.measurement,
//                 onChanged: (Measurement? newValue) {
//                   final updatedIngredient = IngredientWithQuantity(
//                     ingredient: ingredient.ingredient,
//                     quantity: ingredient.quantity,
//                     measurement: newValue!,
//                     recipeId: ingredient.recipeId,
//                     ingredientWithQuantityId: ingredient.ingredientWithQuantityId,
//                   );
//                   onUpdateMeasurement(updatedIngredient);
//                 },
//                 items: measurements.map<DropdownMenuItem<Measurement>>((Measurement value) {
//                   return DropdownMenuItem<Measurement>(
//                     value: value,
//                     child: Text(value.title),
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//           onDeleted: () => onDelete(ingredient.ingredient),
//         );
//       }).toList(),
//     );
//   }
// }




