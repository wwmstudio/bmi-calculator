import 'package:flutter/material.dart';

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
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: kRoundedIconButtonSize,
        height: kRoundedIconButtonSize,
      ),
      fillColor: kTernaryColor,
      splashColor: kSecondaryColor,
    );
  }
}
