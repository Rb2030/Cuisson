import 'package:flutter/material.dart';

class UIHelper {
  /// Vertical spacing constants. Adjust to your liking.
  /// 
  static const double verticalSpaceTiny = 12.0;
  static const double verticalSpaceSmall = 20.0;
  static const double verticalSpaceMedium = 30.0;
  static const double verticalSpaceLarge = 60.0;
  static const double verticalSpaceVeryLarge = 100.0;

  /// Horizontal spacing constants. Adjust to your liking.
  /// 
  static const double horizontalSpaceTiny = 10.0;
  static const double horizontalSpaceSmall = 20.0;
  static const double horizontalSpaceMedium = 30.0;
  static const double horizontalSpaceLarge = 60.0;
  static const double horizontalSpaceVeryLarge = 100.0;

  /// Other size constants
  /// 
  static const double safeAreaPadding = 20.0;
  static const double iconSize = 24.0;

  /// TextField
  /// 
  static const double textFieldBorderWidthEnabled = 1.6;
  static const double textFieldBorderWidthFocused = 4;
  static const double textFieldBorderRadius = 6;
  static const double textFieldPadding = 10;
  static const double textFieldHeight = 50;

  /// Button
  /// 
  static const double buttonCornerRadius = 4;
  static const double buttonMinHeight = 45;
  static const double buttonMinWidth = 118;
  static const double buttonPadding = 12; 

  /// Returns a vertical space with height set to [_VerticalSpaceTiny]

  static Widget verticalTinySpace() {
    return verticalSpace(verticalSpaceTiny);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceSmall]
  static Widget verticalSmallSpace() {
    return verticalSpace(verticalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceMedium]
  static Widget verticalMediumSpace() {
    return verticalSpace(verticalSpaceMedium);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceLarge]
  static Widget verticalLargeSpace() {
    return verticalSpace(verticalSpaceLarge);
  }

  static Widget verticalVeryLargeSpace() {
    return verticalSpace(verticalSpaceVeryLarge);
  }

  /// Returns a vertical space equal to the [height] supplied
  static Widget verticalSpace(double height) {
    return Container(height: height);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceTiny]
  static Widget horizontalTinySpace() {
    return verticalSpace(verticalSpaceTiny);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceSmall]
  static Widget horizontalSmallSpace() {
    return horizontalSpace(horizontalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceMedium]
  static Widget horizontalMediumSpace() {
    return horizontalSpace(horizontalSpaceMedium);
  }

  /// Returns a vertical space with height set to [HorizontalSpaceLarge]
  static Widget horizontalLargeSpace() {
    return horizontalSpace(horizontalSpaceLarge);
  }

  /// Returns a vertical space with height set to [HorizontalSpaceVeryLarge]
  static Widget horizontalVeryLargeSpace() {
    return horizontalSpace(horizontalSpaceVeryLarge);
  }

  /// Returns a vertical space equal to the [width] supplied
  static Widget horizontalSpace(double width) {
    return Container(width: width);
  }

/// Screen Height

  static double screenHeightWithOutSafeArea(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double height = MediaQuery.of(context).size.height;
    return height - padding.top - padding.bottom;
  }

  static double screenHeightWithOutStatusBar(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return height - padding.top;
  }

  static double screenHeightWithOutStatusBarAndToolBar(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return height - padding.top - kToolbarHeight;
  }

/// Screen Width
 
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}