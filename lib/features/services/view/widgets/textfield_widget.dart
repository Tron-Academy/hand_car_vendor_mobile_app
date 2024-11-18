import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool isLarge;
  final TextEditingController controller;
  const TextFieldWidget({super.key, required this.hintText, this.isLarge = false, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLarge ? context.space.space_200 * 8 : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.space.space_100),
        color: Colors.white,
      ),
      child: TextFormField(
        maxLines: isLarge ? null : 1,
        expands: isLarge,
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: context.typography.bodySmall,
        ),
      ),
    );
  }
}