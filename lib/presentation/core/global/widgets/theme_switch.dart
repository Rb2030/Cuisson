import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/constants.dart';
import '../helpers/shared_preferences/shared_preferences_helper.dart';
import '../theme/app_themes.dart';
import '../theme/bloc/theme_bloc.dart';
import '../theme/bloc/theme_event.dart';

class TrialButton extends StatefulWidget { // could be stateless
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
    return FutureBuilder<String>(
          future: getAppThemeFromSharedPreferences(Constants.appTheme),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            appTheme = snapshot.data == Constants.appThemeDark;
            final bool _isSwitched = BlocProvider.of<ThemeBloc>(context).state is ThemeStateChangedDark;
            return CupertinoSwitch(
              value: _isSwitched || appTheme,
              onChanged: (bool value) {
                final newAppTheme = value ? AppTheme.dark : AppTheme.light;
                BlocProvider.of<ThemeBloc>(context)
                    .add(ThemeEventChanged(newTheme: newAppTheme));
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
