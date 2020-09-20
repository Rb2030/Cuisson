import 'package:Cuisson/presentation/core/global/helpers/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_bloc.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_event.dart';
import 'package:Cuisson/presentation/core/global/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TrialButton extends StatefulWidget {
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
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      final bool _isSwitched = state is ThemeStateChangedDark;
      return FutureBuilder<String>(
          future: getAppThemeFromSharedPreferences(Constants.appTheme),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            appTheme = snapshot.data == Constants.appThemeDark;
            return CupertinoSwitch(
              value: _isSwitched ||
                  appTheme, // This is the same as if appTheme is not null or light then value is true (switch is on) else false (it's off)
              onChanged: (bool value) {
                debugPrint("button pressed");
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
    });
  }
}
