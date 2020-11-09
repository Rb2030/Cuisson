import 'package:Cuisson/application/auth/auth_bloc.dart';
import 'package:Cuisson/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
              initial: (_) {},
              authenticated: (_) /*=> ExtendedNavigator.of(context).replace(Routes.),*/ {debugPrint('I am authenticated');},
              unauthenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.logInPage));
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
