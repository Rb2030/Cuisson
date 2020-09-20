part of 'theme_bloc.dart';

@immutable
abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeStateInitial extends ThemeState {
  final AppTheme themeData;
  const ThemeStateInitial({this.themeData});

  @override
  List<Object> get props => [themeData];
  }

class ThemeStateChangedLight extends ThemeState {
  final AppTheme themeData;
  const ThemeStateChangedLight({this.themeData});

  @override
  List<Object> get props => [themeData];
}

class ThemeStateChangedDark extends ThemeState {
  final AppTheme themeData;
  const ThemeStateChangedDark({this.themeData});

  @override
  List<Object> get props => [themeData];
}

class ThemeStateChangeError extends ThemeState {
  final String errorMessage;
  const ThemeStateChangeError({this.errorMessage});


  @override
  List<Object> get props => [errorMessage];
}
