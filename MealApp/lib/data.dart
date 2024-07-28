

import 'package:mealapp/model/categoris.dart';
import 'package:mealapp/model/meal.dart';

const List<Categories>CATEGORIES = [

  Categories(id: "c1", name: "Chinese", image: "images/chinese.jpg"),
  Categories(id: "c2", name: "Indian", image: "images/indian.jpg"),
  Categories(id: "c3", name: "Oriental", image: "images/oriental.jpg"),
  Categories(id: "c4", name: "Pasta", image: "images/pasta.jpg"),
  Categories(id: "c5", name: "sandwich", image: "images/sand.jpg"),
  Categories(id: "c6", name: "SaLads", image: "images/salad.jpg"),
  Categories(id: "c7", name: "RICE DISHES", image: "images/Rice.jpg"),
  Categories(id: "c8", name: "DESSERT", image: "images/desatr.jpg"),
];
const List<Meal>DUMMY_MEAL =  [
  Meal(
      id: "m1",
      title: "LAMP CHOPS",
      imageUrl: "images/lampchops.jpg",
      salary: "150",
      time: "35",
      description : "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
      categoryNumber: "c3"),
  Meal(
      id: "m2",
      title: "BUTTER CHICKEN",
      imageUrl: "images/butterchicken.jpg",
      salary: "90",
      time: "25",
      description: " ",
      categoryNumber: "c2"),
  Meal(
      id: "m3",
      title: "ALFREDO",
      imageUrl: "images/alfredo.jpg",
      salary: "60",
      time: "25",
      description: " ",
      categoryNumber: "c4"),
  Meal(
      id: "m4",
      title: "steak",
      imageUrl: "images/steak.jpg",
      salary: "150",
      time: "30",
      description: " ",
      categoryNumber: "c3"),
  Meal(
      id: "m5",
      title: "Smoked Cheesy ",
      imageUrl: "images/smoked_cheesy.jpg",
      salary: "90",
      time: "25",
      description: " ",
      categoryNumber: "c7"),
  Meal(
      id: "m6",
      title: "Lamp Biryani",
      imageUrl: "images/lamp_biryani.jpg",
      salary: "90",
      time: "30",
      description: " ",
      categoryNumber: "c2"),
  Meal(
      id: "m7",
      title: "ShiSh Tawook Rice",
      imageUrl: "images/shish_Tawook.jpg",
      salary: "99",
      time: "30",
      description: " ",
      categoryNumber: "c7"),
  Meal(
      id: "m8",
      title: "Lamp shank",
      imageUrl: "images/lamp_shank.jpg",
      salary: "130",
      time: "35",
      description: " ",
      categoryNumber: "c3")
];
