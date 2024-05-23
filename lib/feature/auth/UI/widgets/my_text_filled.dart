import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;
  final String? Function(String?)? validator;
  final InputDecoration? decoration;
  final SvgPicture prefixIcon;

  const MyTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
    this.validator,
    this.decoration,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: Theme.of(context).textTheme.labelSmall,
            prefixIcon: prefixIcon,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).secondaryHeaderColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            )),
        validator: validator,
      ),
    );
  }
}