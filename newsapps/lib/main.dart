import 'package:flutter/material.dart';
import 'package:newsapps/Screens/HomeScreen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        category: '',
      ),
    );
  }
}
