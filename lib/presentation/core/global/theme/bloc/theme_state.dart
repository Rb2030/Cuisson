part of 'theme_bloc.dart';

AppTheme getTheme() {
 if (globals.darkModeEnabled) {
   return AppTheme.dark;
 } else {
   return AppTheme.light;
 }
}

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @required AppTheme appTheme,
  }) = _ThemeState;

  factory ThemeState.initial() => ThemeState(appTheme: getTheme());
}
