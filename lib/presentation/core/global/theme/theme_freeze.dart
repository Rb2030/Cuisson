import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'theme_freeze.freezed.dart';

@freezed
abstract class Theme with _$Theme {
  const factory Theme(AppTheme appTheme) = _Theme;
}

enum AppTheme { light, dark }

final appThemeData = {
  AppTheme.light:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.white),
  AppTheme.dark:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.black)
};
