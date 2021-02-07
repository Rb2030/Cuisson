import 'package:flutter/material.dart';

class UIHelper {

  // Spacing constants.

  static const double spaceMiniscule = 6.0;
  static const double spaceTiny = 12.0;
  static const double spaceTinySmall = 16.0;
  static const double spaceSmall = 20.0;
  static const double spaceSmallMedium = 30.0;
  static const double spaceMedium = 40.0;
  static const double spaceLarge = 80.0;
  static const double spaceVeryLarge = 100.0;
  static const double huge = 180.0;
  static const double gigantic = 210.0;

  /// Other size constants
 
  static const double lineCornerRadius = 5.0;
  static const double lineHeight = 0.8;
  static const double paddingBetweenElements = 24.0;
  static const double iconSize = 25.0;
  static const double navArrowSize = 50.0;
  static const double elevation = 8.0;
  static const double appBarHeight = 65.0;

  /// TextField

  static const double textFieldBorderWidthDisabled = 0.8;
  static const double textFieldBorderWidthFocused = 1.7;
  static const double textFieldBorderRadius = 6;
  static const double textFieldPadding = 10;
  static const double textFieldHeight = 50;

  /// Button

  static const double buttonCornerRadius = 4;
  static const double buttonMinHeight = 45;
  static const double buttonMinWidth = 118;
  static const double buttonPadding = 12;

  /// Video

  static const double videoCornerRadius = 4;

  /// Screen Height
  /// 
  static double screenHeightWithOutSafeArea(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    return height - padding.top - padding.bottom;
  }

  static double screenHeightWithOutSafeAreaAndAppBar(BuildContext context) { // Need to find out the AppBarHeight
    final height = MediaQuery.of(context).size.height;
    const  appBarHeight = UIHelper.appBarHeight;
    final padding = MediaQuery.of(context).padding;
    return height - padding.top - padding.bottom - appBarHeight;
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

  /// Safe Area Padding 
  static double safeAreaPadding(BuildContext context) {
    return screenWidth(context) / 10;
  } 
}
