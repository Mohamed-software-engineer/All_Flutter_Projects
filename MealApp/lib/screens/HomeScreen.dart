import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/widget//categoryItems.dart';
import 'package:mealapp/model//categoris.dart';
import 'package:mealapp/widget/AppBar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar(title: "MEAL APP"),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                "MEAL APP",
                style: TextStyle(color: Colors.white,fontSize: 40),
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
        color: Colors.lightBlue[100],
        child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,children: [
          ...CATEGORIES.map((e) {
            return categoryItems(name: e.name, image: e.image, id: e.id, route: "mealScreen",);
    }).toList()
    ])));
  }}