import 'package:bloc/bloc.dart';
import 'package:bmi/cubit/state.dart';

class BMIState extends Cubit<InitialState>
{
  BMIState(): super(changeState());
  bool maleTap = true;
  bool femaleTap = false;
  double slider = 140;
  int weight = 40, age = 15;

  void MaleTap()
  {
    maleTap = !maleTap;
    femaleTap = false;
    emit(changeState());
  }
  void FemaleTap()
  {
    femaleTap = !femaleTap;
    maleTap = true;
    emit(changeState());
  }
  void Slider(double x)
  {
    slider = x;
    emit(changeState());
  }
  void AddWeight()
  {
    weight++;
    emit(changeState());
  }
  void minusWeight()
  {
    if (weight > 0)
      {
        weight--;
      }
    emit(changeState());
  }
  void AddAge()
  {
    age++;
    emit(changeState());
  }
  void minusAge()
  {
    if (age > 0) {
      age--;
    }
      emit(changeState());
  }
}