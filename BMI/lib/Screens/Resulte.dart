import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
class BmiResulte extends StatelessWidget {
  double resulte = 0;
  BmiResulte({required this.resulte});
  @override
  Widget build(BuildContext context) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple[800],
                title: Text("BMI CALCULATOR", style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400),),
                centerTitle: true,
              ),
              body: Container(
                color: Colors.deepPurple[900],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YOUR RESULTE", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[800],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          width: double.infinity,
                          height: 500,
                          child: Column(
                            children: [
                              if (resulte < 18.5)
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Underweight", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.green),),
                                      Text("${resulte.toStringAsFixed(2)}", style: TextStyle(fontSize: 60, color: Colors.white),),
                                      Text("You have a underweight body weight", style: TextStyle(fontSize: 25,),),
                                    ],
                                  ),
                                ),
                              if (resulte >= 18.5 && resulte <= 24.9)
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("NORMAL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.green),),
                                      Text("${resulte.toStringAsFixed(2)}", style: TextStyle(fontSize: 60, color: Colors.white)),
                                      Text("You have a normal body weight", style: TextStyle(fontSize: 25,),),
                                    ],
                                  ),
                                ),
                              if (resulte >= 25 && resulte <= 29.9)
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("OVERWEIGHT", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.green),),
                                      Text("${resulte.toStringAsFixed(2)}", style: TextStyle(fontSize: 60, color: Colors.white)),
                                      Text("You have a overweight body weight", style: TextStyle(fontSize: 25,),),
                                    ],
                                  ),
                                ),
                              if (resulte >= 30 && resulte <= 34.9)
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("OBESE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.green),),
                                      Text("${resulte.toStringAsFixed(2)}", style: TextStyle(fontSize: 60, color: Colors.white)),
                                      Text("You have a obese body weight", style: TextStyle(fontSize: 25,),),
                                    ],
                                  ),
                                ),
                              if (resulte > 35)
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("EXTREMELY OBESE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.green),),
                                      Text("${resulte.toStringAsFixed(2)}", style: TextStyle(fontSize: 60, color: Colors.white)),
                                      Text("You have a extremely obese body weight", style: TextStyle(fontSize: 25,),),
                                    ],
                                  ),
                                ),
                            ],
                          )
                      ),
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      color: Colors.deepPurple,
                      child: MaterialButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("RE-CALCULATE", style: TextStyle(fontSize: 30),),),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
