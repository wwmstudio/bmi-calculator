import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'blocs/input_bloc.dart';
import 'card_button.dart';
import 'constants.dart';
import 'counter_card.dart';
import 'rounded_card.dart';
import 'slider_card.dart';
import 'theme.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final InputBloc inputBloc = Provider.of<InputBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculater'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CardButton(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                    isActive: inputBloc.gender == GENDER.MALE,
                    onTap: () => inputBloc.gender = GENDER.MALE,
                  ),
                  CardButton(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                    isActive: inputBloc.gender == GENDER.FEMALE,
                    onTap: () => inputBloc.gender = GENDER.FEMALE,
                  ),
                ],
              ),
            ),
            SliderCard(
              value: inputBloc.height.toDouble(),
              onChanged: (double value) {
                inputBloc.height = value.toInt();
              },
              min: kMinHeight,
              max: kMaxHeight,
              divisions: (kMaxHeight - kMinHeight).toInt(),
              unit: 'CM',
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CounterCard(
                    label: 'WEIGHT',
                    unit: 'KG',
                    value: inputBloc.weight,
                    onDecrement: inputBloc.decreaseWeight,
                    onIncrement: inputBloc.increaseWeight,
                  ),
                  CounterCard(
                    label: 'AGE',
                    value: inputBloc.age,
                    onDecrement: inputBloc.decreaseAge,
                    onIncrement: inputBloc.increaseAge,
                  ),
                ],
              ),
            ),
            Container(
              color: kAccentColor,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kButtonTextStyle,
                ),
              ),
              width: double.infinity,
              height: kButtonHeight,
              margin: EdgeInsets.only(top: kCommonMargin),
            ),
          ],
        ));
  }
}
