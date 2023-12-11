import 'package:flutter/material.dart';
import 'package:reddit_tutorial/features/auth/login_screen.dart';
import 'package:reddit_tutorial/theme/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Tutorial',
      theme: Palette.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}

