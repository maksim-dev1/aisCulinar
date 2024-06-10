import 'dart:io';

import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_ingredient_for_recipe.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_recipe_text_filed.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_step_for_recipe.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:culinar/feature/recipe/data/repositories/resipe_firebase_repository.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

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
  TimeOfDay  time = TimeOfDay .now();
  File? _image;
  final List<IngredientWithQuantity> _ingredients = [];
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
        _image = File(pickedFile.path);
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
        recipeId: '',
        stepNumber: _steps.length + 1,
      ));
    });
  }

  void _addIngredient(IngredientWithQuantity value) {
    setState(() {
      _ingredients.add(value);
    });
  }

  void _deleteIngredient(int index) {
    setState(() {
      _ingredients.removeAt(index);
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
      if (_ingredients.isNotEmpty &&
          _steps.isNotEmpty &&
          _selectedCategory != null) {
            final String cookingTime = "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
        Recipe recipe = Recipe(
          recipeId: '',
          userId: currentUser.uid,
          imageUrl: '',
          title: _titleController.text,
          description: _descriptionController.text,
          cookingTime: cookingTime,
          portions: int.parse(_portionsController.text),
          categories: _selectedCategory!.title,
          ingredients: '',
          steps: '',
          rating: const Rating(
            ratingId: '',
            userId: '',
            overallRating: 0,
            totalRating: 0,
          ),
          comments: [],
        );

        context
            .read<RecipeBloc>()
            .add(AddRecipe(recipe, _ingredients, _steps, _image));
        if (kDebugMode) {
          print('Рецепт отправлен на добавление');
        }

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
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: BlocListener<RecipeBloc, RecipeState>(
        listener: (context, state) {
          if (state is RecipeLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Center(
                  child: CircularProgressIndicator(color: secondaryColor),
                );
              },
            );
          } else if (state is RecipeAdded) {
            Navigator.of(context).pop(); 
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Рецепт успешно сохранен!'),
                backgroundColor: Colors.green,
              ),
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
                      _image == null
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
                                    _image!,
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
                      AddRecipeTextFiled(
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
                      AddRecipeTextFiled(
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
                      const SizedBox(height: 9),
                      InkWell(
                        onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 24.0,
                              title: Text(
                                'Выберите время',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              content: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: CupertinoDatePicker(
                                  initialDateTime: DateTime(
                                    DateTime.now().year,
                                    DateTime.now().month,
                                    DateTime.now().day,
                                    time.hour,
                                    time.minute,
                                  ),
                                  mode: CupertinoDatePickerMode.time,
                                  use24hFormat: true,
                                  onDateTimeChanged: (DateTime newTime) {
                                    setState(() {
                                      time = TimeOfDay(
                                        hour: newTime.hour,
                                        minute: newTime.minute,
                                      );
                                    });
                                  },
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: Text(
                                    'Выбрать',
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
                          },
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1.5, color: Colors.grey),
                                      left: BorderSide(
                                          width: 1.5, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 1.5, color: Colors.grey),
                                    ),
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(24)),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            'часы:',
                                            style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(child: SizedBox()),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: Text(
                                            '${time.hour}',
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
                                    ),
                                  ),
                                ),
                              ),
                              const VerticalDivider(width: 3),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1.5, color: Colors.grey),
                                      right: BorderSide(
                                          width: 1.5, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 1.5, color: Colors.grey),
                                    ),
                                    borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(24)),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            'минуты:',
                                            style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(child: SizedBox()),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: Text(
                                            '${time.minute}',
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                      AddRecipeTextFiled(
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
                        ingredients: _ingredients,
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
                                  _image = image;
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
