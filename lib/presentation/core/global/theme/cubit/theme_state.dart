part of 'theme_cubit.dart';

class ThemeState {
  bool themeChanged;
  final ThemeData themeData;
  ThemeState({this.themeChanged, this.themeData});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is ThemeState &&
      o.themeChanged == themeChanged &&
      o.themeData == themeData;
  }

  @override
  int get hashCode => themeChanged.hashCode ^ themeData.hashCode;
}
