import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF090C22);
const kSecondaryColor = Color(0xFF101427);
const kTernaryColor = Color(0xFF1D1F33);
const kAccentColor = Color(0xFFEA1556);
const kActiveTextColor = Color(0xFFFFFFFF);
const kInactiveTextColor = Color(0xFF8C8D98);
const kSuccessColor = Color(0xFF37BF7D);
const kWarningColor = Color(0xFFFBBC05);
const kDangerColor = Color(0xFFCB2431);

ThemeData kAppTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kPrimaryColor,
);

const kLabelStyle = TextStyle(
  fontSize: 18.0,
  color: kInactiveTextColor,
);

const kActiveLabelStyle = TextStyle(
  fontSize: 18.0,
  color: kActiveTextColor,
);

const kSuccessTextStyle = TextStyle(
  fontSize: 18.0,
  color: kSuccessColor,
  fontWeight: FontWeight.w900,
);

const kDisplay1ActiveTextStyle = TextStyle(
  fontSize: 140.0,
  color: kActiveTextColor,
  fontWeight: FontWeight.w900,
);

const kDisplay2ActiveTextStyle = TextStyle(
  fontSize: 50.0,
  color: kActiveTextColor,
  fontWeight: FontWeight.w900,
);

const kDisplay3ActiveTextStyle = TextStyle(
  fontSize: 50.0,
  color: kActiveTextColor,
  fontWeight: FontWeight.w900,
);

const kH1ActiveTextStyle = TextStyle(
  fontSize: 30.0,
  color: kActiveTextColor,
  fontWeight: FontWeight.w600,
);

TextStyle kButtonTextStyle = kActiveLabelStyle.copyWith(
  fontWeight: FontWeight.bold,
);
