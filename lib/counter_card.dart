import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'rounded_card.dart';
import 'rounded_icon_button.dart';
import 'constants.dart';
import 'theme.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    Key key,
    this.label: '',
    @required this.value,
    this.unit: '',
    @required this.onIncrement,
    @required this.onDecrement,
  }) : super(key: key);

  final String label;
  final int value;
  final String unit;
  final Function onIncrement;
  final Function onDecrement;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: kLabelStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                value.toString(),
                style: kDisplay2ActiveTextStyle,
              ),
              Text(
                unit,
                style: kLabelStyle,
              ),
            ],
          ),
          SizedBox(
            height: kCommonMargin * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedIconButton(
                onPressed: onDecrement,
                icon: FontAwesomeIcons.minus,
              ),
              SizedBox(
                width: kCommonMargin,
              ),
              RoundedIconButton(
                onPressed: onIncrement,
                icon: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}
