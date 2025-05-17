import 'package:flutter/material.dart';

ThemeData darkmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.dark(
    primary: const Color(0xFFDEAE9F),
    primaryContainer: const Color(0xFFFFFFFF),
    secondary: const Color(0xFF0A2D2E),
    secondaryContainer: const Color(0xFF6A8E8F),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: const Color (0xFF0A2D2E), 
    displayColor: const Color(0xFF0A2D2E)
  ),
);