import 'package:flutter/material.dart';

enum AppTheme { light, dark }

final appThemeData = {
  AppTheme.light:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.white),
  AppTheme.dark:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.black)
};
