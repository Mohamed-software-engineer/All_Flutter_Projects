import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/model/meal.dart';
import 'package:mealapp/widget/AppBar.dart';
import 'package:mealapp/widget/Mealitems.dart';
import 'package:mealapp/widget/categoryItems.dart';
class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context){
    Map<String, dynamic> data =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Meal? dataFilter = DUMMY_MEAL.firstWhere(
          (element) => element.id == data["id"],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4754af),
        title: Text(data["name"], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:Mealitems(name: dataFilter.title, imageUrl: dataFilter.imageUrl, id: dataFilter.id, salary: dataFilter.salary, description: dataFilter.description, categoryNumber: dataFilter.categoryNumber, time: dataFilter.time),

      ),
    );
  }
}
