import 'package:flutter/material.dart';
import 'package:holding_gesture/holding_gesture.dart';

import 'constants.dart';
import 'theme.dart';

class RoundedIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  const RoundedIconButton({
    Key key,
    @required this.onPressed,
    @required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      onHold: onPressed,
      holdTimeout: Duration(milliseconds: 100),
      child: RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
        shape: CircleBorder(),
        constraints: BoxConstraints.tightFor(
          width: kRoundedIconButtonSize,
          height: kRoundedIconButtonSize,
        ),
        fillColor: kTernaryColor,
        splashColor: kSecondaryColor,
      ),
    );
  }
}
