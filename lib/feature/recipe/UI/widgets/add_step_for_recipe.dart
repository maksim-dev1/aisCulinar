import 'dart:io';

import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/add_recipe_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddStepForRecipe extends StatefulWidget {
  const AddStepForRecipe({super.key});

  @override
  State<AddStepForRecipe> createState() => _AddStepForRecipeState();
}

class _AddStepForRecipeState extends State<AddStepForRecipe> {
  File? _image;
  final TextEditingController _descriptionController = TextEditingController();

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          constraints: BoxConstraints(minHeight: 400),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 14),
                    child: Container(
                      width: 65,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Шаг 1',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, right: 24),
                    child: Transform.scale(
                      scale: 1.2,
                      child: IconButton(
                        onPressed: () {
                          //TODO: Метод для удаления шага
                        },
                        icon: deleteIcon,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 10),
                child: Text(
                  'Фото шага',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: SizedBox(
                  height: 200,
                  child: _image == null
                      ? InkWell(
                          onTap: _pickImage,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Transform.scale(
                                scale: 1.5,
                                child: addgalleryIcon,
                              ),
                            ),
                          ),
                        )
                      : Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image(
                                image: FileImage(_image!),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 10),
                child: Text(
                  'Описание шага',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: AddRecipeTextFiled(
                  labelText: 'Описание шага',
                  maxLines: 3,
                  controller: _descriptionController,
                ),
              ),
              const SizedBox(height: 14)
            ],
          ),
        ),
      ],
    );
  }
}
