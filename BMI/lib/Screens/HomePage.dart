import 'dart:ui';
import 'package:bmi/cubit/cubit.dart';
import 'package:bmi/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Resulte.dart';

class Bmi extends StatefulWidget{
  Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  double resulte = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BMIState,InitialState>(builder: (context,state)
        {
          var cubit = BlocProvider.of<BMIState>(context);
          return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.deepPurple[800],
                  title: Text("BMI CALCULATOR", style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400),),
                  centerTitle: true,
                ),
                body: Container(
                  color: Colors.deepPurple[800],
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: InkWell(
                                onTap: ()
                                {
                                  cubit.MaleTap();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: cubit.maleTap ? Colors.deepPurple[900] : Colors.blue,
                                    borderRadius: BorderRadius.circular(40),
                                  ),

                                  // margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.male, size: 50),
                                      SizedBox(height: 10,),
                                      Text("MALE", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              )),
                              SizedBox(width: 10,),
                              Expanded(child: InkWell(
                                onTap: (){
                                  cubit.FemaleTap();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: cubit.femaleTap? Colors.blue:Colors.deepPurple[900],                          borderRadius: BorderRadius.circular(40),
                                  ),
                                  // margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.female, size: 50),
                                      SizedBox(height: 10,),
                                      Text("FEMALE", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                Text("HEIGHT", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text("${cubit.slider.round()}cm", style: TextStyle(fontSize: 40),),
                                Slider(value: cubit.slider,onChanged: (double x){
                                  cubit.Slider(x);
                                },min: 140,max: 240,activeColor: Colors.deepOrange,),
                              ]
                          )
                      )),
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.deepPurple[900],
                                  ),
                                  margin: EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text("WEIGHT", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
                                      Text("${cubit.weight}" , style: TextStyle(fontSize: 40),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(
                                              child: Icon(Icons.add, size: 40),
                                              backgroundColor: Colors.blue,
                                              onPressed: (){
                                                cubit.AddWeight();
                                              }),
                                          SizedBox(width: 10,),
                                          FloatingActionButton(
                                              child: Icon(Icons.remove, size: 40),
                                              backgroundColor: Colors.blue,
                                              onPressed: (){
                                                cubit.minusWeight();
                                              })
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.deepPurple[900],
                                  ),
                                  margin: EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text("AGE", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
                                      Text("${cubit.age}" , style: TextStyle(fontSize: 40),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(
                                              child: Icon(Icons.add, size: 40),
                                              backgroundColor: Colors.blue,
                                              onPressed: (){
                                                cubit.AddAge();
                                              }),
                                          SizedBox(width: 10,),
                                          FloatingActionButton(
                                              child: Icon(Icons.remove, size: 40),
                                              backgroundColor: Colors.blue,
                                              onPressed: (){
                                                cubit.minusAge();
                                              })
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ) ),
                      Container(
                        height: 70,
                        width: double.infinity,
                        color: Colors.deepPurple,
                        child: MaterialButton(onPressed: (){
                          resulte = (cubit.weight / (cubit.slider/100 * cubit.slider/100));
                          Navigator.push(context,MaterialPageRoute(builder: (_){
                            return BmiResulte(resulte: resulte);
                          }));
                        }, child: Text("CALCULATE", style: TextStyle(fontSize: 30),),),
                      )
                    ],
                  ),
                )
            ),
          );
        }, listener: (context,state){}
    );
  }
}