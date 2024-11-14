import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Center(
        child: Text('Search Page', style: context.typography.bodyLarge),
      );
  }
}