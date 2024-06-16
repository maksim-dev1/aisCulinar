import 'dart:io';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/custom_text_field.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddStepWidget extends StatefulWidget {
  final StepRecipe step;
  final Function(StepRecipe, File?) onStepAdded;
  final int stepNumber;
  final Function onDelete;

  const AddStepWidget({
    super.key,
    required this.step,
    required this.onStepAdded,
    required this.stepNumber,
    required this.onDelete,
  });

  @override
  State<AddStepWidget> createState() => _AddStepWidgetState();
}

class _AddStepWidgetState extends State<AddStepWidget> {
  TextEditingController _descriptionController = TextEditingController();
  File? _stepImage;

  @override
  void initState() {
    super.initState();
    _descriptionController =
        TextEditingController(text: widget.step.description);
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _stepImage = File(pickedImage.path);
      });
      widget.onStepAdded(widget.step.copyWith(image: pickedImage.path), _stepImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 24, right: 24),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      'Шаг ${widget.stepNumber}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  onPressed: widget.onDelete as void Function()?,
                  icon: deleteIcon,
                )
              ],
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 40),
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
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: SizedBox(
              height: 200,
              child: _stepImage == null
                  ? InkWell(
                      onTap: _pickImage,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Transform.scale(
                            scale: 1.5,
                            child: const Icon(Icons.add_photo_alternate),
                          ),
                        ),
                      ),
                    )
                  : Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.file(
                            _stepImage!,
                            width: double.infinity,
                            height: 200,
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
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 40),
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
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CustomTextField(
              controller: _descriptionController,
              onChanged: (value) {
                widget.onStepAdded(
                    widget.step.copyWith(description: value), _stepImage);
              },
              labelText: 'Опишите что нужно сделать на этом шаге',
              maxLines: 3,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

