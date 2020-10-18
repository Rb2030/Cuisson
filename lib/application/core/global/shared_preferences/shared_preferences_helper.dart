import 'dart:async';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

// class StorageUtil {
//   static StorageUtil _storageUtil;
//   static SharedPreferences _preferences;

//   static Future<StorageUtil> getInstance() async {
//     if (_storageUtil == null) {
//       // keep local instance until it is fully initialized.
//       final secureStorage = StorageUtil._();
//       await secureStorage._init();
//       _storageUtil = secureStorage;
//     }
//     return _storageUtil;
//   }
//   StorageUtil._();
//   Future _init() async {
//     _preferences = await SharedPreferences.getInstance();
//   }
//   // get string
//   static Future<String> getString(String key, {String defValue = ''}) async {
//     if (_preferences == null) return defValue;
//     return _preferences.getString(key) ?? defValue;
//   }
//   // add string
//   static Future<bool> addString(String key, String value) async {
//     if (_preferences == null) return null;
//     return _preferences.setString(key, value);
//   }
// }
