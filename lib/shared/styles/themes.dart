import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mab/shared/styles/colors.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
  primaryColor: kColorE,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: kColorE,
    secondary: kColorD,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kColorD,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: kColorE,
    unselectedItemColor: kColorC,
    elevation: 20.0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    iconTheme: IconThemeData(
      color: kColorE,
    ),
    titleTextStyle: TextStyle(
      color: kColorE,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white10,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
);
