part of 'theme_bloc.dart';

AppTheme getTheme() {
  AppTheme sharedPrefTheme = AppTheme.light;
  getAppThemeFromSharedPreferences(Constants.appTheme)
      .then((value) => sharedPrefTheme = value);
  return sharedPrefTheme;
}

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @required AppTheme appTheme,
  }) = _ThemeState;

  factory ThemeState.initial() => ThemeState(appTheme: getTheme());
}
