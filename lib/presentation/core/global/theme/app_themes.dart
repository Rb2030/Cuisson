import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme { light, dark }

final appThemeData = {
  // Light Mode
  AppTheme.light: ThemeData(
      primaryColorLight: Colors.white,
      brightness: Brightness.light,
      primaryColor: Colors.white,
      accentColor: Colors.black,
      backgroundColor: Colors.white,
      canvasColor: Colors.white,
      buttonColor: Colors.black,
      buttonBarTheme: const ButtonBarThemeData(alignment: MainAxisAlignment.center),
      buttonTheme: ButtonThemeData(
          padding: const EdgeInsets.all(UIHelper.buttonPadding),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(UIHelper.buttonCornerRadius),
              // ignore: avoid_redundant_argument_values
              side: const BorderSide(color: Colors.black)),
          minWidth: UIHelper.buttonMinWidth,
          height: UIHelper.buttonMinHeight,
          buttonColor: Colors.black,
         // colorScheme: ColorScheme(secondary: Colors.black), /// -------------- Need to check this to see if the text on white buttons is black
          disabledColor: Colors.grey),
      iconTheme: const IconThemeData(color: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(color: Colors.black),
          contentPadding: const EdgeInsets.symmetric(
              vertical: UIHelper.textFieldPadding,
              horizontal: UIHelper.textFieldPadding),
          focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(UIHelper.textFieldBorderRadius),
              borderSide: const BorderSide(
                 // color: Colors.black,
                  width: UIHelper.textFieldBorderWidthFocused)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  // ignore: avoid_redundant_argument_values
                  color: Colors.black,
                  width: UIHelper.textFieldBorderWidthEnabled))),
      textTheme: textTheme()
          .apply(displayColor: Colors.black, bodyColor: Colors.black)),

  // Dark Mode
  AppTheme.dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.white,
      backgroundColor: Colors.black,
      canvasColor: Colors.black,
      buttonColor: Colors.white,
      buttonBarTheme: const ButtonBarThemeData(alignment: MainAxisAlignment.center),
      buttonTheme: ButtonThemeData(
          padding: const EdgeInsets.all(UIHelper.buttonPadding),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(UIHelper.buttonCornerRadius),
              side: const BorderSide(color: Colors.white)),
          minWidth: UIHelper.buttonMinWidth,
          height: UIHelper.buttonMinHeight,
          buttonColor: Colors.white,
          textTheme: ButtonTextTheme.accent,
          // ignore: missing_required_param
       //   colorScheme: ColorScheme(secondary: Colors.black), /// -------------- Need to check this to see if the text on white buttons is black
          disabledColor: Colors.grey),
      iconTheme: const IconThemeData(color: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(color: Colors.white),
          contentPadding: const EdgeInsets.symmetric(
              vertical: UIHelper.textFieldPadding,
              horizontal: UIHelper.textFieldPadding),
          focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(UIHelper.textFieldBorderRadius),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width: UIHelper.textFieldBorderWidthFocused)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white,
                  width: UIHelper.textFieldBorderWidthEnabled))),
      textTheme: textTheme()
          .apply(displayColor: Colors.white, bodyColor: Colors.white))
};

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.cormorantGaramond(
        fontSize: 111, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.cormorantGaramond(
        fontSize: 69, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.cormorantGaramond(
        fontSize: 55, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.cormorantGaramond(
        // Used for the Cuisson title
        fontSize: 39,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25),
    headline5: GoogleFonts.cormorantGaramond(
        fontSize: 28, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.cormorantGaramond(
        fontSize: 23, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.beVietnam(
        fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.beVietnam(
        // Used for inside textFields
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1),
    bodyText1: GoogleFonts.beVietnam(
        fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.beVietnam(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.1),
    button: GoogleFonts.beVietnam(
        fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 1.25),
    caption: GoogleFonts.beVietnam(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.beVietnam(
        fontSize: 8, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}
