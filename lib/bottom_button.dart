import 'package:flutter/material.dart';

import 'constants.dart';
import 'theme.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    @required this.text,
    @required this.onClick,
  }) : super(key: key);

  final String text;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: kAccentColor,
        child: Center(
          child: Text(
            text,
            style: kButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kButtonHeight,
        margin: EdgeInsets.only(top: kCommonMargin),
      ),
    );
  }
}
