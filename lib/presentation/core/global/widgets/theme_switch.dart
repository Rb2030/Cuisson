import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';

import '../constants/constants.dart';
import '../theme/app_themes.dart';
import '../theme/bloc/theme_bloc.dart';

class TrialButton extends StatefulWidget {
  // could be stateless
  @override
  _TrialButtonState createState() => _TrialButtonState();
}

class _TrialButtonState extends State<TrialButton> {
  bool appTheme;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppTheme>(
        future: getAppThemeFromSharedPreferences(Constants.appTheme),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          appTheme = snapshot.data == Constants.appThemeDark;
          final bool _isSwitched =
              BlocProvider.of<ThemeBloc>(context).state.appTheme ==
                  AppTheme.dark; // is ThemeStateChangedDark;
          return CupertinoSwitch(
            value: _isSwitched || appTheme,
            onChanged: (bool value) {
              final newAppTheme = value ? AppTheme.dark : AppTheme.light;
              context
                  .bloc<ThemeBloc>()
                  .add(ThemeEvent.themeChanged(newAppTheme));
              value
                  ? setAppThemeToSharedPreferences(
                      Constants.appTheme, Constants.appThemeDark)
                  : setAppThemeToSharedPreferences(
                      Constants.appTheme, Constants.appThemeLight);
            },
          );
        });
  }
}
