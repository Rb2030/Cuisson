import 'package:Cuisson/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Cuisson/presentation/auth/widgets/sign_in_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInFormView(),
    )
    );
  }
}
