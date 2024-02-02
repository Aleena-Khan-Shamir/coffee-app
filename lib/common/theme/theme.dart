import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData themeData = ThemeData(
      colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xffC67C4E),
    onPrimary: Colors.black,
    secondary: Color(0xffFFF5EE),
    onSecondary: Color(0xffC67C4E),
    error: Colors.red,
    onError: Colors.red,
    background: Colors.white,
    onBackground: Color(0xff0F0A32),
    surface: Colors.grey,
    onSurface: Color(0xff0F0A32),
  ));
}
