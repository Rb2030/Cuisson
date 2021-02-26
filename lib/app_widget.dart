import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;
import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/bloc/theme_bloc.dart';
import 'package:Cuisson/presentation/core/global/widgets/keyboard_dismisser.dart';
import 'package:Cuisson/presentation/routes/router.gr.dart' as r;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/auth/auth_bloc/auth_bloc.dart';
import 'application/core/global/constants/constants.dart';
import 'injection.dart';

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
    return FutureBuilder<List<AppTheme>>(
        future:
            Future.wait([getAppThemeFromSharedPreferences(Constants.appTheme)]),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            globals.darkModeEnabled = snapshot.data[0] == AppTheme.dark;
            return MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => getIt<ThemeBloc>()),
                  BlocProvider(
                      create: (context) => getIt<AuthBloc>()
                        ..add(const AuthEvent.authCheckRequested())),
                ],
                child: BlocConsumer<ThemeBloc, ThemeState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      appTheme = state.appTheme == AppTheme.dark
                          ? appThemeData.values.last
                          : appThemeData.values.first;
                      return keyboardDismisser(
                          context: context,
                          child: MaterialApp(
                            title: 'Material App',
                            theme: appTheme,
                            home: Container(),
                            builder: ExtendedNavigator.builder<r.Router>(
                              router: r.Router(),
                            ),
                          ));
                    }));
          } else {
            return Container();
          }
        });
  }
}
