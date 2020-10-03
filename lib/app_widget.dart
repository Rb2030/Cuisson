import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/auth/pages/sign_in_page.dart';
import 'package:Cuisson/presentation/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider<ThemeBloc>(  // Should probably use a blocProvider with getIt in here
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        return FutureBuilder<String>(
            future: getAppThemeFromSharedPreferences(Constants.appTheme),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              appTheme = snapshot.data == Constants.appThemeDark
                  ? appThemeData.values.last
                  : appThemeData.values.first;
              return MaterialApp(
                title: 'Material App',
                theme: state is ThemeStateChangedLight
                    ? appThemeData.values.first
                    : appTheme,
                home: SignInPage(),
              );
            });
      }),
    );
  }
}
