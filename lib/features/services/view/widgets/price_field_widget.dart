import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class PriceField extends StatelessWidget {
  final TextEditingController controller;
  // In TextFieldWidget
final String? Function(String?)? validator;

// ... in the TextField widget:

  const PriceField({super.key, required this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.space.space_100),
      child: Container(
        width: 200, // Adjust the width as needed
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(context.space.space_100),
        ),
        child: TextFormField(
         validator: validator,
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Enter Service Price',
            hintStyle: context.typography.bodySmall,
          ),
        ),
      ),
    );
  }
}