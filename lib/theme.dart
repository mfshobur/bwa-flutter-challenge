import 'package:flutter/material.dart';

const Color purpleColor = Color(0xff0D0846);
const Color greyColor = Color(0xff929292);
const Color whiteColor = Color(0xffffffff);
const Color backgroundColor = Color(0xffFBFBFD);

class MyTheme {
  static ThemeData appTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: purpleColor,
      onPrimary: Color(0xffffffff),
    ),
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: 'Avenir-Black',
  );
}
