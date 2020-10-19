import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;

import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';

import '../app_themes.dart';

part 'theme_event.dart';
part 'theme_bloc.freezed.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial());

  ThemeState get intialState => ThemeState.initial();

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(themeChanged: (e) async* {
      yield state.copyWith(appTheme: e.appTheme);
      debugPrint('App theme changed $e');
    });
  }
}
