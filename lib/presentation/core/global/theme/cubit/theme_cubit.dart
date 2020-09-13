import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../app_themes.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState());

  bool themeChanged = false;

  void changeTheme() {
    themeChanged = !themeChanged;
    final newTheme = themeChanged == false
        ? appThemeData.values.first
        : appThemeData.values.last;
    emit(ThemeState(themeData: newTheme));
  }
}
