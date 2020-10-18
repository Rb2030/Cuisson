import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/application/core/global/shared_preferences/shared_preferences_helper.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:Cuisson/presentation/core/global/theme/app_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/core/global/helpers/platform_helper.dart';
import '../theme/bloc/theme_bloc.dart';

class CuissonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool mainMenuDisplayed; // If MainMenuDisplayed is set to true then SettingsCog, Basket & Profile are shown, else just the SettingsCog is shown
  final Function settingsCogTapped;
  final Function backButtonTapped;
  final Function basketTapped;
  final Function profileTapped;

  @override
  Size get preferredSize => const Size.fromHeight(100.00);

  const CuissonAppBar(
      {@required this.mainMenuDisplayed,
      this.settingsCogTapped,
      this.backButtonTapped,
      this.basketTapped,
      this.profileTapped});

  @override
  Widget build(BuildContext context) {
    final TargetPlatform platform = PlatformHelper.platformType(context);
    final Widget backButtonOrSpacer = (platform == TargetPlatform.android)
        ? const SizedBox(width: UIHelper.iconSize)
        : const Icon(CupertinoIcons.back, size: UIHelper.iconSize); //These icons will have to be wrapped in Gesture recognisers to navigate to their respective routes

    final Widget showSettingsCog = mainMenuDisplayed == true
        ? const Icon(Icons.settings_outlined, size: UIHelper.iconSize) //These icons will have to be wrapped in Gesture recognisers to navigate to their respective routes
        : backButtonOrSpacer;

    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      bool appTheme;
      return FutureBuilder<AppTheme>(
        future: getAppThemeFromSharedPreferences(Constants.appTheme),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          appTheme = snapshot.data == Constants.appThemeLight;
          final Brightness level =
              (state.appTheme == AppTheme.light) &&
                      appTheme
                  ? Brightness.light
                  : Brightness.dark;
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              //statusBarColor: colour,
              statusBarBrightness: level,
            ),
            child: SafeArea(
              minimum: const EdgeInsets.all(UIHelper.safeAreaPadding),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: UIHelper.spaceSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      showSettingsCog,
                      const Spacer(),
                      const Icon(Icons.shopping_cart_outlined,
                          size: UIHelper.iconSize),  //These icons will have to be wrapped in Gesture recognisers to navigate to their respective routes
                    const SizedBox(width: UIHelper.spaceTiny),
                      const Icon(Icons.person_outlined,
                          size: UIHelper.iconSize),  //These icons will have to be wrapped in Gesture recognisers to navigate to their respective routes
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
