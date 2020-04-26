import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();
  static final TextStyle bigHeadingTextStyle = TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Rubik');
  static final TextStyle bodyTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontFamily: 'Rubik');
  static final TextStyle defaultTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontFamily: 'Rubik');
  static final TextStyle buttonTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Color(0xFFFFBA0B),
  );
  static final TextStyle headingTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Ubuntu',
  );
}
