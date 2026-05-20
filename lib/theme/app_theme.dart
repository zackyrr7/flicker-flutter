import 'package:flicker/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(useMaterial3: true, textTheme: AppTextTheme.theme);
  }
}
