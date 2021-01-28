// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/pages/register_failure_page.dart';
import '../auth/pages/register_page.dart';
import '../auth/pages/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String registerPage = '/register-page';
  static const String registerFailurePage = '/register-failure-page';
  static const all = <String>{
    splashPage,
    signInPage,
    registerPage,
    registerFailurePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(Routes.registerFailurePage, page: RegisterFailurePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    RegisterPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterPage(),
        settings: data,
      );
    },
    RegisterFailurePage: (data) {
      final args = data.getArgs<RegisterFailurePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterFailurePage(args.errorMessage),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushRegisterPage() => push<dynamic>(Routes.registerPage);

  Future<dynamic> pushRegisterFailurePage({
    @required String errorMessage,
  }) =>
      push<dynamic>(
        Routes.registerFailurePage,
        arguments: RegisterFailurePageArguments(errorMessage: errorMessage),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// RegisterFailurePage arguments holder class
class RegisterFailurePageArguments {
  final String errorMessage;
  RegisterFailurePageArguments({@required this.errorMessage});
}
