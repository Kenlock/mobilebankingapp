import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.teal,
    accentColor: Colors.deepOrange,
    appBarTheme: AppBarTheme(
        color: Colors.teal, iconTheme: IconThemeData(color: Colors.white)),
    colorScheme: ColorScheme.light(
        // primary: Colors.white,
        // onPrimary: Colors.white,
        // primaryVariant: Colors.white38,
        // secondary: Colors.red,
        ),
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Colors.black,
      accentColor: Colors.deepOrange,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      colorScheme: ColorScheme.dark(
        primary: Colors.black,
        onPrimary: Colors.black,
        primaryVariant: Colors.black,
        secondary: Colors.red,
      ),
      cardTheme: CardTheme(
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: Colors.white54,
      ),
      textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
          subtitle: TextStyle(color: Colors.white70, fontSize: 18.0)));
}
