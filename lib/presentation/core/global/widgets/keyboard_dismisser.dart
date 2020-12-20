import 'package:flutter/material.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart' as globals;

Widget keyboardDismisser({BuildContext context, Widget child}) {
  final gesture = GestureDetector(
    onTap: () {
      final currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
        FocusManager.instance.primaryFocus.unfocus();
        debugPrint("Unfocused!");
        globals.isUnfocused = true;
      }
    },
    child: child,
  );
  return gesture;
}
