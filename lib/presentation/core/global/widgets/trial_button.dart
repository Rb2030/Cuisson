import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_bloc.dart';
import 'package:Cuisson/presentation/core/global/theme/cubit/theme_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Need to get currentTheme from the userDefaults
    return Container(
      width: 100,
      height: 50,
      child: CupertinoSwitch(
        value:
            false, // if UserDefaults == AppTheme.dark then set to true else false
        onChanged: (bool value) {
          debugPrint("button pressed");
          final newAppTheme = value == true ? AppTheme.dark : AppTheme.light;
          BlocProvider.of<ThemeBloc>(context).add(ThemeEventChanged(newTheme: newAppTheme)); //mapEventToState(ThemeEventChanged(newTheme: newAppTheme));
        },
      ),
    );
  }
}

// return BlocProvider<ThemeBloc>(
//   create: (context) => ThemeBloc()..add(const ThemeEventChanged(newTheme: AppTheme.light)),

//   return BlocProvider.value(
// value: BlocProvider.of<ThemeBloc>(context),
