import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
      backgroundColor: Colors.white,
      buttonColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
          )));
  static final dark = ThemeData.dark().copyWith(
      backgroundColor: Colors.transparent,
      scaffoldBackgroundColor: Colors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.yellow)));
}
