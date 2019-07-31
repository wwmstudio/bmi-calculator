import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF090C22);
const kSecondaryColor = Color(0xFF101427);
const kTernaryColor = Color(0xFF1D1F33);
const kAccentColor = Color(0xFFEA1556);
const kActiveTextColor = Color(0xFFFFFFFF);
const kInactiveTextColor = Color(0xFF8C8D98);

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

const kH1ActiveTextStyle = TextStyle(
    fontSize: 50.0, color: kActiveTextColor, fontWeight: FontWeight.w900);

TextStyle kButtonTextStyle =
    kActiveLabelStyle.copyWith(fontWeight: FontWeight.bold);
