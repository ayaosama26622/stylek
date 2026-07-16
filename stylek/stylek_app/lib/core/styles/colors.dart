import 'package:flutter/painting.dart';

abstract class AppColor {
  static const Color primaryPink = Color(0XFFFFD6F7);
  static const Color primaryBlue = Color(0XFFD5E8FF);

  static const Color whiteColor = Color(0XFFFFFFFF);
  static const Color accentColor = Color(0xFFE6EFF9);
  static const Color greyColor = Color(0xFF767676);
  static const Color darkColor = Color(0XFF121212);
  static const Color errorColor = Color(0xFFDA1B1B);
  static const Color blue = Color(0xFF9AC6FF);

  static const List<Color> gradientColors = [
    Color(0xFFF8B4F1),
    Color(0xFFA2C9FF),
  ];

  static const List<Color> backgroundGradientColors = [
    Color(0xFFFFD6F7),
    Color(0xFFFFD6F7),
    Color(0xFFD5E8FF),
    Color(0xFFD5E8FF),
  ];

  static const List<Color> textred = [Color(0xFFB43234), Color(0xFF660F10)];
}
