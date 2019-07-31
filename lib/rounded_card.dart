import 'package:flutter/material.dart';

import 'constants.dart';
import 'theme.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    Key key,
    this.bgColor: kSecondaryColor,
    this.borderRadius: kCardRadius,
    this.child,
    this.margin: kCommonMargin,
  }) : super(key: key);

  final Color bgColor;
  final double borderRadius;
  final Widget child;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        margin: EdgeInsets.all(margin),
      ),
    );
  }
}
