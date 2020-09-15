import 'package:Cuisson/presentation/core/global/widgets/cuisson_app_bar.dart';
import 'package:Cuisson/presentation/core/global/widgets/trial_button.dart';
import 'package:Cuisson/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_cubit.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CubitProvider(
      create: (context) => ThemeCubit(),
      child: BlocConsumer<ThemeCubit, ThemeState>(
          listener: (context, ThemeState state) {},
          builder: (context, state) {
            SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
              systemNavigationBarColor: state.themeData == ThemeData.dark() ? Colors.black : Colors.white, // navigation bar color
              statusBarColor: state.themeData == ThemeData.dark() ? Colors.white : Colors.black, // status bar color
            ));
            return MaterialApp(
              title: 'Material App',
              theme: appThemeData.values.last,//state.themeData ??= appThemeData.values.first, // This is the same as -- if (state.themeData == null) state.themeData = appThemeData.values.first;
              //     home: SignInPage(),
              home: const Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(65.0),
                  child: CuissonAppBar(mainMenuDisplayed: false),
                ),
              ),
            );
          }),
    );
  }
}
