import 'package:Cuisson/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:Cuisson/presentation/auth/pages/log_in_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: LogInPage),
      // MaterialRoute(page: RegisterPage),
      // MaterialRoute(page: MainMenuMenus),
      // MaterialRoute(page: MainMenuRecipes),
      // MaterialRoute(page: MainMenuTipsAndTricks),
      // MaterialRoute(page: MainMenuEssentialKit),
      // MaterialRoute(page: MainMenuChefsAndRestaurants),
    ],
)

class $Router {}
