import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/theme/light_theme.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}
