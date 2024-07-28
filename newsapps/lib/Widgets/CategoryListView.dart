import 'package:flutter/material.dart';
import 'package:newsapps/Widgets/CategoryCard.dart';
import '../Models/CategoryModels.dart';
import '../Screens/HomeScreen.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  CategoryView({super.key});
  List<CategoryModel> Categorys = [
    CategoryModel(image: "image/business.jpeg", title: "business"),
    CategoryModel(image: "image/entertainment.jpeg", title: "entertainment"),
    CategoryModel(image: "image/general.jpeg", title: "general"),
    CategoryModel(image: "image/health.jpeg", title: "health"),
    CategoryModel(image: "image/science.jpeg", title: "science"),
    CategoryModel(image: "image/sports.jpeg", title: "sports"),
    CategoryModel(image: "image/technology.jpeg", title: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                String category = Categorys[index].title;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen(
                      category: category,
                    );
                  }),
                );
              },
              child: CategoryCard(card: Categorys[index]));
        },
        itemCount: Categorys.length,
      ),
    );
  }
}
