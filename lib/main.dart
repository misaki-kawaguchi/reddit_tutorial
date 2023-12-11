import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reddit_tutorial/features/auth/login_screen.dart';
import 'package:reddit_tutorial/firebase_options.dart';
import 'package:reddit_tutorial/theme/palette.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

