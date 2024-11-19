import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/router/router.dart';
import 'package:handcar_ventor/core/theme/dark_theme.dart';
import 'package:handcar_ventor/core/theme/light_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
