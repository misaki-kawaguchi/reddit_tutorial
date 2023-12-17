import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/firebase_options.dart';
import 'package:reddit_tutorial/router.dart';
import 'package:reddit_tutorial/theme/palette.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Tutorial',
      theme: Palette.darkModeAppTheme,
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => loggedOutRoute),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
