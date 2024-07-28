import 'package:flutter/material.dart';
import 'package:mealapp/screens/MealScreen.dart';
class Mealitems extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String id;
  final String salary;
  final String description;
  final String categoryNumber;
  final String time;

  const Mealitems({required this.name, required this.imageUrl, required this.id, required this.salary, required this.description, required this.categoryNumber, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView(
          children:[ InkWell(
            onTap: (){
              Navigator.pushNamed(context, "mealDetailes", arguments: {
              "id": id,
              "name": name,
              "image": imageUrl,
              "salary": salary,
              "description": description,
              "categoryNumber":categoryNumber,
              "time": time,
              });
            },
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl)
                    ,fit: BoxFit.fill,),
              ),
            ),
          ),
            SizedBox(height: 10,),
            Text("Salary: $salary", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            Text("Time: $time", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
            ,Text("Description: $description", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MaterialButton(onPressed: (){},
                color: Colors.blue,
                child: Text("BUY", style: TextStyle(color: Colors.black),),
                minWidth: double.infinity,),
            ),

          ]),
    );
  }
}
