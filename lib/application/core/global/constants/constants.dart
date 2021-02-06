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
  static const String serverError = 'Server error, please try again later.';
  static const String ok = 'OK';
  static const String next = 'Next';
  static const String submit = 'Submit';

// Sign In Screen

  static const String email = 'Email';
  static const String password = 'Password';
  static const String username = 'Username';
  static const String signIn = 'Sign In';
  static const String logIn = 'Log In';
  static const String register = 'Register';
  static const String forgottenSigninDetails = 'Forgotten sign In details?';
  static const String invalidEmail = 'Invalid Email';
  static const String invalidPassword = 'Invalid Password';
  static const String invalidUsername = 'Invalid Username';

  static const String cancelledByUser = 'Cancelled by user';
  static const String emailAlreadyInUse = 'Email already registered. Please sign in by pressing back, or click "Forgotten sign in details?" if you wish to reset your password';
  static const String invalidUsernameAndPasswordCombo = 'Invalid username and password combination';
  static const String pleaseTryAgain = 'Please try again';
  static const String usernameTaken = 'This username has already been taken, please choose another unique one';

// Register Screen

  static const String emailInformation = 'Please ensure that you do not leave any blank spaces and your email is in the correct format e.g cuisson@mail.com.';
  static const String passwordInformation = 'Please ensure that the password has at least one capital letter, one number, one special character, no blank spaces and is at least 6 characters long.';
  static const String usernameInformation = "Please select a username which is unique. This will be linked to your account so please refrain from using any profanity.";
  static const String unableToRegister = "Unable to register";

// AppTheme Keys

  static const String appTheme = 'appTheme';

// AppTheme Values

  static const String appThemeLight = 'light';
  static const String appThemeDark = 'dark';

// Images

  static const String informationIcon = 'assets/images/information_icon.svg';

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}
