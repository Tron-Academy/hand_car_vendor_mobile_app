import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class TextLabel extends StatelessWidget {
  final String label;
  const TextLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return  Text(
      label,
      style: context.typography.bodyMedium
          .copyWith(color: const Color(0xff4B5563)),
    );
  }
}