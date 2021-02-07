import 'package:Cuisson/application/auth/register_form_bloc/register_form_bloc.dart';
import 'package:Cuisson/presentation/auth/widgets/register_failure_form_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class RegisterFailurePage extends StatelessWidget {
  final String errorMessage;
  final String passwordString;
  final String emailString;
  final String usernameString;

  const RegisterFailurePage(this.errorMessage, this.emailString, this.passwordString, this.usernameString);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => ExtendedNavigator.of(context).popUntil((route) => route.isFirst),
          ),
          elevation: 0,
        ),
        body: BlocProvider(
          create: (context) => getIt<RegisterFormBloc>(),
          child: RegisterFailureFormView(errorMessage: errorMessage, emailString: emailString, passwordString: passwordString, usernameString: usernameString)
        ));
  }
}
