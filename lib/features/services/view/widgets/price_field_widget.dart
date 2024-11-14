import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class PriceField extends StatelessWidget {
  const PriceField({super.key});

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
        child: TextField(
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