import 'package:Cuisson/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;
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
          body: Align(
            child: SizedBox(
              width: UIHelper.screenWidth(context) / 1.7,
              child: Form(
                  //       autovalidate: state.showErrorMessages, // Deprecated
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return ListView(
                        controller: listScrollController,
                        children: [
                          SizedBox(
                              height: UIHelper.screenHeightWithOutSafeArea(
                                      context) /
                                  14),
                          Row(
                            children: [
                              const Spacer(),
                              Text(Constants.cuisson,
                                  style: Theme.of(context).textTheme.headline4),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(height: UIHelper.spaceHuge),
                          TextFormField(
                            autocorrect: false,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration()
                                .copyWith(hintText: Constants.email),
                            onChanged: (value) => context
                                .bloc<SignInFormBloc>()
                                .add(SignInFormEvent.emailChanged(value)),
                            validator: (_) => context
                                .bloc<SignInFormBloc>()
                                .state
                                .emailAddress
                                .value
                                .fold(
                                  (leftFailure) => leftFailure.maybeMap(
                                      invalidEmail: (_) =>
                                          Constants.invalidEmail,
                                      orElse: () => null),
                                  (rightSuccess) => null,
                                ),
                            onTap: () {
                              bottomButtonEnabled = false;
                              globals.isUnfocused = false;
                            },
                          ),
                          const SizedBox(height: UIHelper.spaceSmall),
                          TextFormField(
                            autocorrect: false,
                            obscureText: true,
                            decoration: const InputDecoration()
                                .copyWith(hintText: Constants.password),
                            onChanged: (value) => context
                                .bloc<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            validator: (_) => context
                                .bloc<SignInFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                  (leftFailure) => leftFailure.maybeMap(
                                      invalidPassword: (_) =>
                                          Constants.invalidPassword,
                                      orElse: () => null),
                                  (rightSuccess) => null,
                                ),
                            onTap: () {
                              bottomButtonEnabled = false;
                              globals.isUnfocused = false;
                            },
                          ),
                          const SizedBox(height: UIHelper.spaceLarge),
                          Row(
                            children: [
                              const Spacer(),
                              RaisedButton(
                                onPressed: () {
                                  debugPrint('Login pressed');
                                  bottomButtonEnabled = true;
                                },
                                textColor: Colors.white,
                                child: Text(Constants.login.toUpperCase()),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(height: UIHelper.spaceMedium),
                          GestureDetector(
                            onTap: () {
                              debugPrint('Register pressed');
                            },
                            child: Row(
                              children: [
                                const Spacer(),
                                Text(Constants.register,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.grey)),
                                const Spacer(),
                              ],
                            ),
                          ),
                          //         SizedBox(height: constraints.maxHeight / bottomSpace),
                        ],
                      );
                    },
                  )),
            ),
          ),
          floatingActionButton: Row(
            children: [
              const Spacer(),
              SizedBox(width: UIHelper.screenWidth(context) / 13.5),
              Visibility(
                      visible: bottomButtonEnabled,
                      child: GestureDetector(
                        onTap: () {
                          if (bottomButtonEnabled) {
                            debugPrint('Forgotten Deets pressed');
                          }
                        },
                        child: Text(Constants.forgottenLoginDetails,
                            style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center),
                      ),
                    ),
                    const Spacer()
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );
      },
    );
  }
}
