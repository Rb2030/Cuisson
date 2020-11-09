import 'package:Cuisson/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route_generator/auto_route_generator.dart';
import 'package:Cuisson/presentation/auth/pages/log_in_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: LogInPage),
    ],
)
class $Router {}
