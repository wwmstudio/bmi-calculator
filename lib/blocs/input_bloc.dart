import 'package:flutter/material.dart';

import '../bmi_calculator.dart';
import '../constants.dart';

class InputBloc extends ChangeNotifier {
  GENDER _gender = GENDER.MALE;
  GENDER get gender => _gender;
  set gender(GENDER value) {
    _gender = value;
    notifyListeners();
  }

  int _height = (kMinHeight + ((kMaxHeight - kMinHeight) / 2)).toInt();
  int get height => _height;
  set height(int value) {
    _height = value;
    notifyListeners();
  }

  int _weight = 65;
  int get weight => _weight;
  set weight(int value) {
    _weight = value;
    notifyListeners();
  }

  decreaseWeight() {
    if (weight > kMinWeight) {
      weight--;
    }
  }

  increaseWeight() {
    if (weight < kMaxWeight) {
      weight++;
    }
  }

  int _age = 20;
  int get age => _age;
  set age(int value) {
    _age = value;
    notifyListeners();
  }

  decreaseAge() {
    if (age > kMinAge) {
      age--;
    }
  }

  increaseAge() {
    if (age < kMaxAge) {
      age++;
    }
  }

  Map _result;
  Map get result => _result;
  set result(Map value) {
    _result = value;
    notifyListeners();
  }

  calculateBMI() {
    Map result = BmiCalculator(
      age: age,
      gender: gender,
      height: height,
      weight: weight,
    ).getResult();
  }
}
