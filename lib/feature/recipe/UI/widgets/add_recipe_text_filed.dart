import 'package:flutter/material.dart';

class AddRecipeTextFiled extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final int maxLines;
  final ValueChanged<String>? onChanged;

  const AddRecipeTextFiled({
    super.key,
    required this.labelText,
     this.controller,
    required this.maxLines, 
    this.onChanged,
  });

@override
   Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: Theme.of(context).textTheme.labelSmall,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).secondaryHeaderColor,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            maxLines: maxLines,
            minLines: 1,
      );
  }
}