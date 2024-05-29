import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_recipe_text_filed.dart';
import 'package:culinar/feature/recipe/data/repositories/resipe_firebase_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:culinar/feature/recipe/UI/widgets/selection_of_ingredient.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';

class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipeBloc(recipeRepository: RecipeFirebaseRepository()),
      child: AddRecipeScreenBody(context: context),
    );
  }
}

class AddRecipeScreenBody extends StatefulWidget {
  final BuildContext context;
  const AddRecipeScreenBody({Key? key, required this.context})
      : super(key: key);

  @override
  State<AddRecipeScreenBody> createState() => _AddRecipeScreenBodyState();
}

class _AddRecipeScreenBodyState extends State<AddRecipeScreenBody> {
  File? _image;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  DateTime time = DateTime(0, 0);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 43),
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 10),
              Container(
                child: _image == null
                    ? InkWell(
                        onTap: _pickImage,
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.grey[500],
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Center(child: Icon(Icons.add)),
                        ),
                      )
                    : Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: SizedBox(
                              width: double.infinity,
                              height: 250,
                              child: Image(
                                image: FileImage(_image!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: _pickImage,
                            ),
                          ),
                        ],
                      ),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 9),
              AddRecipeTextFiled(
                labelText: 'Например: Медовик',
                controller: _titleController,
                maxLines: 1,
              ),
              const SizedBox(height: 22),
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 9),
              AddRecipeTextFiled(
                labelText: 'Расскажите каким будет готовое блюдо',
                controller: _descriptionController,
                maxLines: 3,
              ),
              const SizedBox(height: 22),
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 9),
              InkWell(
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                  left: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                  bottom: BorderSide(
                                      width: 1.5, color: Colors.grey)),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(24)),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text('часы:',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black)),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
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
                            height: 40,
                            decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                  right: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                  bottom: BorderSide(
                                      width: 1.5, color: Colors.grey)),
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(24)),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'минуты:',
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
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
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            content: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CupertinoDatePicker(
                                initialDateTime: time,
                                mode: CupertinoDatePickerMode.time,
                                use24hFormat: true,
                                onDateTimeChanged: (DateTime newTime) {
                                  setState(() => time = newTime);
                                },
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: Text(
                                  'Выбрать',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: secondaryColor,
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
                      )),
              const SizedBox(height: 22),
              Row(
                children: [
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
                ],
              ),
              const SizedBox(height: 9),
              ListIngredient(context: widget.context),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
