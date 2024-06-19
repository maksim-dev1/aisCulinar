import 'dart:io';

import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_ingredient_for_recipe.dart';
import 'package:culinar/feature/recipe/UI/widgets/custom_slider.dart';
import 'package:culinar/feature/recipe/UI/widgets/custom_text_field.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_step_for_recipe.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/data/repositories/resipe_firebase_repository.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipeBloc(recipeRepository: RecipeFirebaseRepository()),
      child: const AddRecipeForm(),
    );
  }
}

//TODO: По возможности добавить к каждому пункту кнопку с всплывающем окном, в котором будет указана информация по заполнению для пользователя

class AddRecipeForm extends StatefulWidget {
  const AddRecipeForm({super.key});

  @override
  State<AddRecipeForm> createState() => _AddRecipeFormState();
}

class _AddRecipeFormState extends State<AddRecipeForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _portionsController = TextEditingController();
  double _cookingTimeValue = 30.0;
  File? _mainIimage;
  final List<IngredientWithQuantity> ingredients = [];
  final List<StepRecipe> _steps = [];
  Categories? _selectedCategory;
  List<Categories> categoriesList = [];

  @override
  void initState() {
    super.initState();
    final recipeBloc = BlocProvider.of<RecipeBloc>(context);
    recipeBloc.add(const GetCategories(''));

    _addStep();
    _addStep();
    _addStep();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _portionsController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _mainIimage = File(pickedFile.path);
      });
    }
  }

  void _deleteStepAndUpdateWidget(int index) {
    setState(() {
      _steps.removeAt(index);
    });
  }

  void _addStep() {
    setState(() {
      _steps.add(StepRecipe(
        stepId: UniqueKey().toString(),
        description: '',
        image: '',
        stepNumber: _steps.length + 1,
      ));
    });
  }

  void _addIngredient(IngredientWithQuantity value) {
    setState(() {
      ingredients.add(value);
    });
  }

  void _deleteIngredient(int index) {
    setState(() {
      ingredients.removeAt(index);
    });
  }

  void _addStepAndUpdateWidget(int index, StepRecipe step) {
    setState(() {
      _steps[index] = step;
    });
  }

  void _submitRecipe() {
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

    if (_formKey.currentState!.validate()) {
      if (ingredients.isNotEmpty &&
          _steps.isNotEmpty &&
          _selectedCategory != null) {
        // Используем значение ползунка для времени приготовления
        final String cookingTime = _cookingTimeValue.round().toString();

        List<IngredientWithQuantity> ingredientsList = ingredients
            .map(
              (ingredient) => IngredientWithQuantity(
                ingredientWithQuantityId: const Uuid().v4(),
                ingredient: Ingredient(
                    ingredientId: ingredient.ingredient.ingredientId,
                    title: ingredient.ingredient.title),
                quantity: ingredient.quantity,
                measurement: Measurement(
                    measurementId: ingredient.measurement.measurementId,
                    title: ingredient.measurement.title),
              ),
            )
            .toList();

        List<StepRecipe> stepsList = _steps
            .map(
              (step) => StepRecipe(
                stepId: const Uuid().v4(),
                description: step.description,
                image: step.image,
                stepNumber: _steps.indexOf(step) + 1,
              ),
            )
            .toList();

        Recipe recipe = Recipe(
          recipeId: '',
          userId: currentUser.uid,
          imageUrl: '',
          title: _titleController.text,
          description: _descriptionController.text,
          cookingTime: cookingTime,
          portions: int.parse(_portionsController.text),
          category:
              _selectedCategory!.title,
          ingredients: [], 
          steps: [],
          rating: const Rating(
            ratingId: '',
            userId: '',
            overallRating: 0, totalRatings: 0,
          
          ),
          comments: [],
        );

        context.read<RecipeBloc>().add(
              AddRecipe(recipe, ingredientsList, stepsList, _mainIimage),
            );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Рецепт успешно отправлен!'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                "Добавьте хотя бы один ингредиент, один шаг и выберите категорию"),
            backgroundColor: Colors.red,
          ),
        );
        if (kDebugMode) {
          print(
              'Добавьте хотя бы один ингредиент, один шаг и выберите категорию');
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Заполните все обязательные поля'),
          backgroundColor: Colors.red,
        ),
      );
      if (kDebugMode) {
        print('Заполните все обязательные поля');
      }
    }
  }

  void _showCategoryDialog() {
    if (categoriesList.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Список категорий пуст!')),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Выберите категорию',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: secondaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: categoriesList.map((category) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedCategory = category;
                      });
                      Navigator.of(context).pop();
                    },
                    child: ListTile(
                      title: Text(
                        category.title,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Оформление рецепта',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: arrowLeftIcon,
        ),
      ),
      body: BlocListener<RecipeBloc, RecipeState>(
        listener: (context, state) {
          if (state is RecipeLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
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
                );
              },
            );
          } else if (state is RecipeAdded) {
            Navigator.of(context).pop();
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    'Успех',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  content: Text(
                    'Рецепт успешно сохранен!',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text(
                        'OK',
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
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else if (state is Error) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Ошибка: ${state.message}')),
            );
          } else if (state is CategoriesLoaded) {
            setState(() {
              categoriesList = state.categories;
            });
          }
        },
        child: BlocBuilder<RecipeBloc, RecipeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 43),
                      Text(
                        'Фотография готового блюда',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      _mainIimage == null
                          ? InkWell(
                              onTap: _pickImage,
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Center(
                                  child: Transform.scale(
                                      scale: 1.5, child: addgalleryIcon),
                                ),
                              ))
                          : Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.file(
                                    _mainIimage!,
                                    width: double.infinity,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Transform.scale(
                                    scale: 1.2,
                                    child: IconButton(
                                      icon: editGalleryIcon,
                                      onPressed: _pickImage,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      const SizedBox(height: 22),
                      Text(
                        'Название рецепта',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      CustomTextField(
                        controller: _titleController,
                        labelText: 'Например: Медовик',
                        maxLines: 1,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Описание рецепта',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      CustomTextField(
                        controller: _descriptionController,
                        labelText: 'Расскажите каким будет готовое блюдо',
                        maxLines: 3,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Время приготовления',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      CustomAnimatedSlider(
                        value: _cookingTimeValue,
                        min: 0,
                        max: 500,
                        onChange: (double value) {
                          setState(() {
                            _cookingTimeValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Количество порций',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      CustomTextField(
                        controller: _portionsController,
                        labelText: 'Например: 4',
                        maxLines: 1,
                        textInputType: TextInputType.number,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Категория',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Center(
                        child: SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (categoriesList.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Список категорий пуст!')),
                                );
                              } else {
                                _showCategoryDialog();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Text(
                              _selectedCategory != null
                                  ? _selectedCategory!.title
                                  : 'Выбрать категорию',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Ингредиенты',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      ListIngredient(
                        ingredients: ingredients,
                        onAdd: _addIngredient,
                        onDelete: _deleteIngredient,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Шаги приготовления',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _steps.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              AddStepWidget(
                                key: ValueKey(_steps[index].stepId),
                                step: _steps[index],
                                onStepAdded: (step, image) {
                                  _addStepAndUpdateWidget(index, step);
                                },
                                stepNumber: index + 1,
                                onDelete: () {
                                  _deleteStepAndUpdateWidget(index);
                                },
                              ),
                              const SizedBox(height: 16),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 9),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: _addStep,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Text(
                              'Добавить шаг',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          width: 300,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: _submitRecipe,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Text(
                              'Добавить рецепт',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
