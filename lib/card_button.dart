import 'package:flutter/material.dart';

import 'constants.dart';
import 'rounded_card.dart';
import 'theme.dart';

class CardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final Function onTap;

  const CardButton({
    Key key,
    this.icon,
    this.label,
    this.isActive: false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      bgColor: isActive ? kTernaryColor : kSecondaryColor,
      child: GestureDetector(
        onTap: onTap != null ? onTap : () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: kLargeIconSize,
              color: isActive ? kActiveTextColor : kInactiveTextColor,
            ),
            SizedBox(
              height: kCommonMargin,
            ),
            Text(
              label,
              style: isActive ? kActiveLabelStyle : kLabelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
