// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/pages/email_already_in_use_page.dart';
import '../auth/pages/register_page.dart';
import '../auth/pages/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String registerPage = '/register-page';
  static const String emailAlreadyInUsePage = '/email-already-in-use-page';
  static const all = <String>{
    splashPage,
    signInPage,
    registerPage,
    emailAlreadyInUsePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(Routes.emailAlreadyInUsePage, page: EmailAlreadyInUsePage),
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
    EmailAlreadyInUsePage: (data) {
      final args = data.getArgs<EmailAlreadyInUsePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmailAlreadyInUsePage(
          args.errorMessage,
          args.emailString,
          args.passwordString,
          args.usernameString,
        ),
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

  Future<dynamic> pushEmailAlreadyInUsePage({
    @required String errorMessage,
    @required String emailString,
    @required String passwordString,
    @required String usernameString,
  }) =>
      push<dynamic>(
        Routes.emailAlreadyInUsePage,
        arguments: EmailAlreadyInUsePageArguments(
            errorMessage: errorMessage,
            emailString: emailString,
            passwordString: passwordString,
            usernameString: usernameString),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EmailAlreadyInUsePage arguments holder class
class EmailAlreadyInUsePageArguments {
  final String errorMessage;
  final String emailString;
  final String passwordString;
  final String usernameString;
  EmailAlreadyInUsePageArguments(
      {@required this.errorMessage,
      @required this.emailString,
      @required this.passwordString,
      @required this.usernameString});
}
