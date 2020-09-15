import 'package:Cuisson/presentation/core/global/helpers/platform_helper.dart';
import 'package:flutter/material.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:flutter/cupertino.dart';

class CuissonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool
      mainMenuDisplayed; // If MainMenuDisplayed is set to true then SettingsCog, Basket & Profile are shown, else just the SettingsCog is shown
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
    final Widget backButtonOrSpacer = (platform == TargetPlatform.android) ? UIHelper.horizontalSpace(UIHelper.iconSize) : const Icon(CupertinoIcons.back, size: UIHelper.iconSize);

    final Widget showSettingsCog = mainMenuDisplayed == true
        ? const Icon(Icons.settings_outlined, size: UIHelper.iconSize)
        : backButtonOrSpacer;

    return SafeArea(
      minimum: const EdgeInsets.all(UIHelper.safeAreaPadding),
      child: Column(
        children: <Widget>[
          UIHelper.verticalSmallSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              showSettingsCog,
              const Spacer(),
              const Icon(Icons.shopping_cart_outlined, size: UIHelper.iconSize),
              UIHelper.horizontalSpace(UIHelper.horizontalSpaceTiny),
              const Icon(Icons.person_outlined, size: UIHelper.iconSize),
            ],
          ),
        ],
      ),
    );
  }
}
