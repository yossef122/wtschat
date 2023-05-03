
import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData darkTheme =ThemeData(
  primarySwatch: defualtColor2(),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w900,
        fontFamily: 'Dosis'
    ),

    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light
    ),
    backgroundColor: Colors.black,
    elevation: 0,
    iconTheme: IconThemeData(
        color: Colors.white
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.transparent,
  ),
  textTheme:  const TextTheme(
    bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 1.3,
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Righteous'
) ;

ThemeData lightTheme = ThemeData(
  primarySwatch: defualtColor1(),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleSpacing: 21,
    titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w900,
        fontFamily: 'Righteous'
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
        color: Colors.black
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defualtColor1(),
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
  ),
  textTheme:  const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      height: 1.3,
    ),
  ),
    fontFamily: 'Righteous'
);