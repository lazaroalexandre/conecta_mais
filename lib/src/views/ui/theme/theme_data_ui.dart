import 'package:flutter/material.dart';

class ThemeDataUi {
  static ThemeData thema = ThemeData(
    colorScheme: const ColorScheme(
      primary: Colors.blue,
      primaryContainer: Colors.blue,
      secondary: Colors.blue,
      secondaryContainer: Colors.white,
      surface: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.blue,
      onSurface: Colors.black,
      onError: Colors.blue,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      centerTitle: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      shape: CircleBorder(),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
    cardTheme: CardTheme(
        shadowColor: Colors.transparent,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
        )),
    useMaterial3: true,
  );
}
