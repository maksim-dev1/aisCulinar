import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_recipe_text_filed.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';

List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class SelectionOfIngredient extends StatefulWidget {
  final BuildContext context;
  const SelectionOfIngredient({super.key, required this.context});

  @override
  State<SelectionOfIngredient> createState() => _SelectionOfIngredientState();
}

class _SelectionOfIngredientState extends State<SelectionOfIngredient> {
  List<Map<String, dynamic>> ingredientItems = [];
  final TextEditingController _quantityIngredientController = TextEditingController();
  String dropdownValue = list.first;
  final TextEditingController _addIngredientController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<RecipeBloc>(context).add(const GetIngredients(''));
  }

  @override
  void dispose() {
    _addIngredientController.dispose();
    _quantityIngredientController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeBloc, RecipeState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is IngredientsLoaded) {
          if (ingredientItems.isEmpty) {
            ingredientItems = state.ingredients.map((ingredient) => {
              "name": ingredient.title,
              "isChecked": false
            }).toList();
          }
        } else if (state is Error) {
          return Center(child: Text(state.message));
        }

        return Column(
          children: [
            SizedBox(
              height: 320,
              child: Column(
                children: [
                  AddRecipeTextFiled(
                    onChanged: (query) {
                     BlocProvider.of<RecipeBloc>(context).add(GetIngredients(query));
                    },
                    labelText: 'Ингредиенты',
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 240,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...ingredientItems.map((favorite) {
                              return CheckboxListTile(
                                activeColor: primaryColor,
                                checkboxShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                value: favorite["isChecked"],
                                title: Text(
                                  favorite["name"],
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
                                    favorite["isChecked"] = val!;
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
                                )
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
                                      content: AddRecipeTextFiled(
                                        controller: _addIngredientController,
                                        labelText: 'Например: Картофель',
                                        maxLines: 1
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
                                              // Создаем новый ингредиент
                                              Ingredient newIngredient = Ingredient(
                                                title: _addIngredientController.text,
                                                ingredientId: '',
                                              );

                                              // Добавляем ингредиент через ваш репозиторий
                                              final recipeBloc = context.read<RecipeBloc>();
                                              recipeBloc.add(AddIngredient(newIngredient));

                                              // Закрываем диалог после успешного добавления
                                              Navigator.of(context).pop();
                                            } catch (e) {
                                              // Если произошла ошибка при добавлении ингредиента
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(
                                                  content: Text('Не удалось добавить ингредиент: $e'),
                                                  backgroundColor: Colors.red,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ],
                                    );
                                  }
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Wrap(
              children: ingredientItems.where((favorite) => favorite["isChecked"] == true).map((favorite) {
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
                            child: Text(favorite["name"],
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ),
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
                                  controller: _quantityIngredientController,
                                  cursorHeight: 18,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  decoration: InputDecoration(
                                    labelText: '0',
                                    labelStyle: Theme.of(context).textTheme.labelSmall,
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 6.0,
                                      horizontal: 10,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context).secondaryHeaderColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            icon: arrowBottomIcon
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                favorite["isChecked"] = !favorite["isChecked"];
                              });
                            },
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
            ),
          ],
        );
      },
    );
  }
}
