import 'package:flutter/material.dart';

class UIHelper {
  /// Vertical spacing constants. Adjust to your liking.
  ///
  static const double spaceTiny = 12.0;
  static const double spaceSmall = 22.0;
  static const double spaceMedium = 32.0;
  static const double spaceLarge = 60.0;
  static const double spaceVeryLarge = 100.0;
  static const double spaceHuge = 120;

  /// Other size constants
  
  static const double safeAreaPadding = 20.0;
  static const double iconSize = 24.0;

  /// TextField
  
  static const double textFieldBorderWidthEnabled = 1.2;
  static const double textFieldBorderWidthFocused = 4;
  static const double textFieldBorderRadius = 6;
  static const double textFieldPadding = 6;
  static const double textFieldHeight = 50;

  /// Button
  
  static const double buttonCornerRadius = 4;
  static const double buttonMinHeight = 45;
  static const double buttonMinWidth = 118;
  static const double buttonPadding = 12;

  /// Screen Height

  static double screenHeightWithOutSafeArea(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    final height = MediaQuery.of(context).size.height;
    return height - padding.top - padding.bottom;
  }

  static double screenHeightWithOutStatusBar(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    return height - padding.top;
  }

  static double screenHeightWithOutStatusBarAndToolBar(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    return height - padding.top - kToolbarHeight;
  }

  /// Screen Width

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
