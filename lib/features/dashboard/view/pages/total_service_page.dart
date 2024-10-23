import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class TotalServicePage extends StatelessWidget {
  const TotalServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
     
        title: Text('Total Service',
            style: context.typography.h3),
      ),
      body: const Center(
        child: Text('Total Service Page'),
      ),
    );
  }
}
