import 'package:Cuisson/presentation/auth/pages/register_page.dart';
import 'package:Cuisson/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:Cuisson/presentation/auth/pages/sign_in_page.dart';

@MaterialAutoRouter(
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: RegisterPage),
      // MaterialRoute(page: MainMenuMenus),
      // MaterialRoute(page: MainMenuRecipes),
      // MaterialRoute(page: MainMenuTipsAndTricks),
      // MaterialRoute(page: MainMenuEssentialKit),
      // MaterialRoute(page: MainMenuChefsAndRestaurants),
    ],
)
class $AppRouter {}
