import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/model/meal.dart';
import 'package:mealapp/widget/AppBar.dart';
import 'package:mealapp/widget/categoryItems.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context){
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    List<Meal> dataFilter = DUMMY_MEAL.where((element)  {
      return element.categoryNumber.contains(data["id"]);
    }).toList();
    return Scaffold(
      appBar: Bar(title: data["name"]),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  "MEAL APP",
                  style: TextStyle(color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic),
                ),
              ),
              ListTile(
                iconColor: Colors.lightBlue,
                title: const Text('Home Screen'),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, "home");
                },
              ),
              ListTile(
                iconColor: Colors.lightBlue,
                title: const Text('Delivery'),
                leading: const Icon(Icons.delivery_dining),
                onTap: () {

                },
              ),
            ],
          ),
        ),
      body: Container(
       width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage(data["image"]),
         fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(
             Colors.black.withOpacity(0.8),
             BlendMode.dstATop,
           ),
         ),
       ),
        child: ListView.builder(itemBuilder: (context,index){
          return categoryItems(name: dataFilter[index].title, image: dataFilter[index].imageUrl, id: dataFilter[index].id, route: "mealDetailes",);
          },itemCount: dataFilter.length,),
      ),
    );
  }
}
