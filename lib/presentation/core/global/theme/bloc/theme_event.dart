import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

}

class ThemeEventChanged extends ThemeEvent {
  final AppTheme newTheme;
  const ThemeEventChanged({@required this.newTheme}) : assert(newTheme !=null);

  @override
  List<Object> get props => [newTheme];

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is ThemeEventChanged &&
      o.newTheme == newTheme;
  }

  @override
  int get hashCode => newTheme.hashCode;
}
