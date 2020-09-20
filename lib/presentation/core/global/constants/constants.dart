  import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<Constants>();

  const Constants({Widget child, Key key}): super(key: key, child: child);

/// ----------------------------------------------------------
  /// Shared Preferences / User Defaults Constants
/// ----------------------------------------------------------

// AppTheme Keys

  static const String appTheme = 'appTheme';

// AppTheme Values

  static const String appThemeLight = 'light';
  static const String appThemeDark = 'dark';

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}