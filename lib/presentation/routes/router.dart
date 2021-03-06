import 'package:Cuisson/presentation/auth/pages/email_already_in_use_page.dart';
import 'package:Cuisson/presentation/splash/splash_page.dart';
import 'package:Cuisson/presentation/auth/pages/sign_in_page.dart';
import 'package:Cuisson/presentation/auth/pages/register_page.dart';
import 'package:Cuisson/presentation/splash/temp_animation_page.dart';
import 'package:auto_route/auto_route_annotations.dart';


@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: TempAnimationPage),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: RegisterPage),
      MaterialRoute(page: EmailAlreadyInUsePage),


      // MaterialRoute(page: MainMenuMenus),
      // MaterialRoute(page: MainMenuRecipes),
      // MaterialRoute(page: MainMenuTipsAndTricks),
      // MaterialRoute(page: MainMenuEssentialKit),
      // MaterialRoute(page: MainMenuChefsAndRestaurants),
    ],
)

class $Router {}
