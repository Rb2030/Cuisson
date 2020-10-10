import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Constants>();

  const Constants({Widget child, Key key}) : super(key: key, child: child);

  /// ----------------------------------------------------------
  /// Shared Preferences / User Defaults Constants
  /// ----------------------------------------------------------

// General App Titles etc

  static const String cuisson = 'CUISSON';

// Login Screen

  static const String email = 'Email';
  static const String password = 'Password';
  static const String login = 'Login';
  static const String register = 'Register';
  static const String forgottenLoginDetails = 'Forgotten login details?';
  static const String invalidEmail = 'Invalid email';
  static const String invalidPassword = 'Invalid password';

// AppTheme Keys

  static const String appTheme = 'appTheme';

// AppTheme Values

  static const String appThemeLight = 'light';
  static const String appThemeDark = 'dark';

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}
