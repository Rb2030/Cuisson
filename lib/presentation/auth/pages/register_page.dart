import 'package:Cuisson/application/auth/register_form_bloc/register_form_bloc.dart';
import 'package:Cuisson/presentation/auth/widgets/register_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => ExtendedNavigator.of(context).pop(),
          ),
          elevation: 0,
        ),
        body: BlocProvider(
          create: (context) => getIt<RegisterFormBloc>(),
          child: RegisterForm(),
        ));
  }
}