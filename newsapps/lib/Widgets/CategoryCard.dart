import 'package:flutter/material.dart';
import 'package:newsapps/Models/CategoryModels.dart';
class CategoryCard extends StatelessWidget {
  final CategoryModel card;
  const CategoryCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 40),
        width: 160,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(card.image),
            fit: BoxFit.fill
          )
        ),
        child: Text(card.title, style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ),
    );
  }
}
