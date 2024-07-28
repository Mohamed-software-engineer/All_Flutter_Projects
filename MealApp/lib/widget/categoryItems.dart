import 'package:flutter/material.dart';
import 'package:mealapp/screens/MealScreen.dart';
class categoryItems extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  final String route;
  const categoryItems({required this.name, required this.image, required this.id, required this.route});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, route, arguments: {
              "id": id,
              "name": name,
              "image": image
            });
          },
          child: Stack(
              alignment: Alignment.bottomCenter,
              children:[ Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image)
                      ,fit: BoxFit.fill,),
                ),
              ),
                Container(
                    width:double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff4754af),
                    ),
                    child: Center(child: Text(name,style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),))),
              ]),
        ),
      ),
    );

  }
}
