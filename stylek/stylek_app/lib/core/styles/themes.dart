import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/font_app.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/core/styles/text.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    fontFamily: AppFonts.cairo,
    scaffoldBackgroundColor: AppColor.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.primaryPink,
      elevation: 0,
      centerTitle: true,
      foregroundColor: AppColor.whiteColor,
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.cairo,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      surfaceTintColor: Colors.transparent,
    ),
    dividerColor: Colors.transparent,
    dividerTheme: const DividerThemeData(color: AppColor.accentColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(60, 30),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.body.copyWith(color: AppColor.greyColor),
      fillColor: AppColor.accentColor,
      filled: true,

      prefixIconColor: AppColor.primaryPink,
      suffixIconColor: AppColor.primaryPink,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColor.primaryPink,
      unselectedItemColor: AppColor.greyColor,
      backgroundColor: Colors.transparent,
      selectedLabelStyle: TextStyles.caption1.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
      unselectedLabelStyle: TextStyles.caption1.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primaryPink,
      onSurface: AppColor.darkColor,
    ),
  );
}
