import 'dart:async';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;

/// ----------------------------------------------------------
/// Method that retrieves the user language code
/// ----------------------------------------------------------

Future<AppTheme> getAppThemeFromSharedPreferences(String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final theme = prefs.getString(key) ?? '';

  if (theme == Constants.appThemeLight || theme == '') {
    return AppTheme.light;
  } else {
    return AppTheme.dark;
  }
}

/// ----------------------------------------------------------
/// Method that saves the user language code
/// ----------------------------------------------------------

Future<bool> setAppThemeToSharedPreferences(String key, String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.setString(key, value);
}
