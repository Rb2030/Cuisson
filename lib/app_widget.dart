import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_cubit.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double screenHeight = 300;
    const double screenWidth = 200;
    ThemeData themeData;
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocConsumer<ThemeCubit, ThemeState>(listener: (context, ThemeState state) {
        themeData = state.themeChanged == true
            ? appThemeData.values.last
            : appThemeData.values.first;
      }, builder: (context, state) {
        return MaterialApp(
          title: 'Material App',
          theme: themeData,
          //     home: SignInPage(),
          home: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(65.0), child: AppBar()),
            body: ConstrainedBox(
              constraints: const BoxConstraints(
                  minHeight: screenHeight, minWidth: screenWidth),
              child: TrialButton(),
            ),
          ),
        );
      }),
    );
  }
}

class TrialButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: RaisedButton(
        color: Colors.yellow,
        textColor: Colors.white,
        onPressed: () {
          debugPrint("button pressed");
          final themeCubit = context.bloc<ThemeCubit>();
          themeCubit.changeTheme();
        },
        child: const Text('PRESS'),
      ),
    );
  }
}
