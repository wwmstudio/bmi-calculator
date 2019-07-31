import 'package:flutter/material.dart';

import 'rounded_card.dart';
import 'theme.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key key,
    this.min: 0.0,
    this.max: 10.0,
    this.divisions: 10,
    @required this.value,
    @required this.onChanged,
    this.showDecimal: false,
    this.unit: '',
  }) : super(key: key);

  final double min;
  final double max;
  final int divisions;
  final double value;
  final Function onChanged;
  final bool showDecimal;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HEIGHT',
            style: kLabelStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                showDecimal ? value.toString() : value.toInt().toString(),
                style: kH1ActiveTextStyle,
              ),
              Text(
                unit,
                style: kLabelStyle,
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              thumbColor: kAccentColor,
              activeTrackColor: kActiveTextColor,
              inactiveTrackColor: kTernaryColor,
              overlayColor: kAccentColor.withAlpha(29),
            ),
            child: Slider(
              value: value,
              onChanged: onChanged,
              min: min,
              max: max,
              divisions: divisions,
            ),
          ),
        ],
      ),
    );
  }
}
