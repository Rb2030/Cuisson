import 'package:Cuisson/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;
import 'package:Cuisson/presentation/core/global/widgets/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final ScrollController listScrollController = ScrollController();
  bool bottomButtonEnabled = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            return AlertDialog(
              title: Text(
                failure.map(
                    cancelledByUser: (_) => Constants.cancelledByUser,
                    serverError: (_) => Constants.serverError,
                    emailAlreadyInUse: (_) => Constants.emailAlreadyInUse,
                    invalidEmailAndPasswordCombination: (_) =>
                        Constants.invalidUsernameAndPasswordCombo),
              ),
              content: const Text(Constants.dialogueMessage),
              actions: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(Constants.ok),
                )
              ],
            );
          },
              (success) => {
                    // TODO: Navigate to main menu after successful log in
                  }),
        );
      },
      builder: (context, state) {
        globals.isUnfocused
            ? bottomButtonEnabled = true
            : bottomButtonEnabled = false;
        return Scaffold(
          body: ThemeSwitch()
        );
      },
    );
  }
}
