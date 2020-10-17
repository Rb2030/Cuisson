import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Constants>();

  const Constants({Widget child, Key key}) : super(key: key, child: child);

  /// ----------------------------------------------------------
  /// Shared Preferences / User Defaults Constants
  /// ----------------------------------------------------------

// General

  static const String cuisson = 'CUISSON';
  static const String serverError = 'Server error';
  static const String ok = 'OK';

// Login Screen

  static const String email = 'Email';
  static const String password = 'Password';
  static const String login = 'Login';
  static const String register = 'Register';
  static const String forgottenLoginDetails = 'Forgotten login details?';
  static const String invalidEmail = 'Invalid email';
  static const String invalidPassword = 'Invalid password';
  static const String cancelledByUser = 'Cancelled by user';
  static const String emailAlreadyInUse = 'Email already in use';
  static const String invalidUsernameAndPasswordCombo =
      'Invalid username and password combination';
  static const String dialogueMessage = 'Please try again';

// AppTheme Keys

  static const String appTheme = 'appTheme';

// AppTheme Values

  static const String appThemeLight = 'light';
  static const String appThemeDark = 'dark';

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}
