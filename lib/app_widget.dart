import 'package:Cuisson/presentation/core/global/widgets/trial_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_bloc.dart';

import 'presentation/core/global/theme/cubit/theme_event.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        final colour =
            state is ThemeStateChangedLight || state is ThemeStateInitial
                ? Colors.black
                : Colors.white;
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: colour, // navigation bar color
          statusBarColor: colour, // status bar color
        ));
        return MaterialApp(
          title: 'Material App',
          theme: state is ThemeStateChangedLight || state is ThemeStateInitial ? appThemeData.values.first : appThemeData.values.last, // This is the same as -- if (state.themeData == null) state.themeData = appThemeData.values.first;
          //     home: SignInPage(),
          home: Scaffold(
            appBar: AppBar(),
            body: TrialButton(),
          ),
        );
      }),
    );
  }
}
