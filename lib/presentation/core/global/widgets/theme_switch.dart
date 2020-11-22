import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;

import '../theme/app_themes.dart';
import '../theme/bloc/theme_bloc.dart';

class ThemeSwitch extends StatefulWidget {
  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: globals.darkModeEnabled,
      onChanged: (bool value) {
        if (value) {
          setAppThemeToSharedPreferences(
              Constants.appTheme, Constants.appThemeDark);
        } else {
          setAppThemeToSharedPreferences(
              Constants.appTheme, Constants.appThemeLight);
        }
        globals.darkModeEnabled = value;
        final newAppTheme = globals.darkModeEnabled ? AppTheme.dark : AppTheme.light;
        context.read<ThemeBloc>().add(ThemeEvent.themeChanged(newAppTheme));
      },
    );
  }
}
