import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {

  static final darkTheme = ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey.shade900,
    textTheme: ThemeData.dark().textTheme.copyWith(
        bodyText1: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          overflow: TextOverflow.ellipsis,
        ),
        bodyText2: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          overflow: TextOverflow.ellipsis,
        ),
    ),
    colorScheme: const ColorScheme.dark(),
  );


  static final lightTheme = ThemeData(
    primaryColor: Colors.grey.shade900,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThemeData.light().textTheme.copyWith(
      bodyText1:  TextStyle(
        color: Colors.grey.shade900,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        overflow: TextOverflow.ellipsis,
      ),
      bodyText2:  TextStyle(
        color: Colors.grey.shade900,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    colorScheme: const ColorScheme.light(),
  );
}