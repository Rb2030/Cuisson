import 'package:Cuisson/presentation/core/global/theme/cubit/theme_event.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../app_themes.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeStateInitial(themeData: AppTheme.light));

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    try {
      if (event is ThemeEventChanged) {
        yield* _themeChanged(event);
      }
    } catch (_) {
      yield const ThemeStateChangeError(
          errorMessage: 'Sorry you cannot change your theme at this time.');
    }
  }

  Stream<ThemeState> _themeChanged(ThemeEventChanged eventChanged) async* {
    if (eventChanged.newTheme == AppTheme.dark) {
      yield ThemeStateChangedDark(themeData: eventChanged.newTheme);
    } else {
      yield ThemeStateChangedLight(themeData: eventChanged.newTheme);
    }
  }
}
