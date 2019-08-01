import 'dart:math';

import 'package:flutter/material.dart';

import 'constants.dart';

class BmiCalculator {
  final int height;
  final int weight;
  final int age;
  final GENDER gender;

  double _bmi = 0;
  double get bmi => double.parse(_bmi.toStringAsFixed(1));
  set bmi(double value) {
    _bmi = value;
  }

  BmiCalculator({
    @required this.height,
    @required this.weight,
    @required this.age,
    @required this.gender,
  }) {
    this.calculate();
  }

  calculate() {
    bmi = weight / pow(height / 100, 2);
  }

  Map getResult() {
    List found = [];

    if (age >= 20) {
      found = chartAbove20.where((elem) {
        return elem['min'] <= bmi && elem['max'] >= bmi;
      });
    } else {
      found = chartBelow20.where((elem) {
        return elem['min'] <= bmi && elem['max'] >= bmi;
      });
    }
    if (found.length > 0) {
      found[0]['bmi'] = bmi;
      return found[0];
    }
    return {'bmi': 0, 'status': 'NOT FOUND'};
  }

  List chartAbove20 = [
    {
      'min': 0.0,
      'max': 14.9,
      'status': 'VERY SEVERELY UNDERWEIGHT',
      'message':
          'You are very severely underweight. Please consult yuor doctor!',
      'indicator': 'warning',
    },
    {
      'min': 15.0,
      'max': 15.9,
      'status': 'SEVERELY UNDERWEIGHT',
      'message':
          'You are severely underweight. Follow a personalized weight gain diet plan!',
      'indicator': 'warning',
    },
    {
      'min': 16.0,
      'max': 18.4,
      'status': 'UNDERWEIGHT',
      'message': 'You are underweight. Focus on your diet!',
      'indicator': 'warning',
    },
    {
      'min': 18.5,
      'max': 25,
      'status': 'NORMAL',
      'message': 'You have a normal body weight. Good Job!',
      'indicator': 'success',
    },
    {
      'min': 25.1,
      'max': 30.0,
      'status': 'OVERWEIGHT',
      'message': 'You are overweight. Revice your diet!',
      'indicator': 'warning',
    },
    {
      'min': 30.0,
      'max': 35.0,
      'status': 'MODERATELY OBESE',
      'message':
          'You are moderately obese. Follow a personalized weight loose diet plan!',
      'indicator': 'danger',
    },
    {
      'min': 35.0,
      'max': 40.0,
      'status': 'SEVERELY OBESE',
      'message':
          'You are severely obese. Please follow workouts with a personalized weight loose diet plan!',
      'indicator': 'danger',
    },
    {
      'min': 40.1,
      'max': double.infinity,
      'status': 'VERY SEVERELY OBESE',
      'message': 'You are very severely obese. Please consult yuor doctor!',
      'indicator': 'danger',
    }
  ];

  List chartBelow20 = [
    {
      'min': 0.0,
      'max': 14.9,
      'status': 'VERY SEVERELY UNDERWEIGHT',
      'message':
          'You are very severely underweight. Please consult yuor doctor!',
      'indicator': 'warning',
    },
    {
      'min': 15.0,
      'max': 15.9,
      'status': 'SEVERELY UNDERWEIGHT',
      'message':
          'You are severely underweight. Follow a personalized weight gain diet plan!',
      'indicator': 'warning',
    },
    {
      'min': 16.0,
      'max': 18.4,
      'status': 'UNDERWEIGHT',
      'message': 'You are underweight. Focus on your diet!',
      'indicator': 'warning',
    },
    {
      'min': 18.5,
      'max': 25,
      'status': 'NORMAL',
      'message': 'You have a normal body weight. Good Job!',
      'indicator': 'success',
    },
    {
      'min': 25.1,
      'max': 30.0,
      'status': 'OVERWEIGHT',
      'message': 'You are overweight. Revice your diet!',
      'indicator': 'warning',
    },
    {
      'min': 30.0,
      'max': 35.0,
      'status': 'MODERATELY OBESE',
      'message':
          'You are moderately obese. Follow a personalized weight loose diet plan!',
      'indicator': 'danger',
    },
    {
      'min': 35.0,
      'max': 40.0,
      'status': 'SEVERELY OBESE',
      'message':
          'You are severely obese. Please follow workouts with a personalized weight loose diet plan!',
      'indicator': 'danger',
    },
    {
      'min': 40.1,
      'max': double.infinity,
      'status': 'VERY SEVERELY OBESE',
      'message': 'You are very severely obese. Please consult yuor doctor!',
      'indicator': 'danger',
    }
  ];
}
