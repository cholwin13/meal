import 'package:flutter/material.dart';
import 'package:meal/resources/routes.dart';
import 'package:meal/ui/screen/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
    );
  }
}
