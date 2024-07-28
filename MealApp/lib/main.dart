import 'package:flutter/material.dart';
import 'package:mealapp/screens/HomeScreen.dart';
import 'package:mealapp/screens/MealDetails.dart';
import 'package:mealapp/screens/MealScreen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "mealScreen": (context) => const MealScreen(),
        "mealDetailes": (context) => const MealDetails(),
        "home": (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}