part of 'theme_cubit.dart';

class ThemeState {
  ThemeData themeData;
  ThemeState({this.themeData});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is ThemeState &&
      o.themeData == themeData;
  }

  @override
  int get hashCode => themeData.hashCode;
}
