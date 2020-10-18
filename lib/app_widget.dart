import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/auth/pages/log_in_page.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/bloc/theme_bloc.dart';
import 'package:Cuisson/presentation/core/global/widgets/keyboard_dismisser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/core/global/constants/constants.dart';
import 'presentation/core/global/widgets/cuisson_app_bar.dart';
import 'presentation/core/global/widgets/theme_switch.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  ThemeData appTheme;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeState>(listener: (context, state) {
      debugPrint('WOOOOOOOO APPTHEME CHANGED $state');
    }, builder: (context, state) {
      return FutureBuilder<AppTheme>(
          future: getAppThemeFromSharedPreferences(Constants.appTheme),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            appTheme = snapshot.data == Constants.appThemeDark
                ? appThemeData.values.last
                : appThemeData.values.first;
            return keyboardDismisser(
              context: context,
              child: MaterialApp(
                title: 'Material App',
                theme: appTheme,
                home: LogInPage(),// TrialButton(),
              ),
            );
          });
    });
  }
}
