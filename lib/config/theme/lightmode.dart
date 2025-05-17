import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.dark(
    primary: const Color(0xFF0A2D2E),
    primaryContainer: const Color(0xFF6A8E8F),
    secondary: const Color(0xFFDEAE9F),
    secondaryContainer: const Color(0xFFFFFFFF),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: const Color (0xFF0A2D2E), 
    displayColor: const Color(0xFF0A2D2E)
  ),
);
