import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get theme {
    return const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: 'epilogue',
        letterSpacing: 12,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
      ),
    );
  }
}
