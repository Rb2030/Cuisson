import 'package:Cuisson/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;
import 'package:Cuisson/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInFormView extends StatefulWidget {
  @override
  _SignInFormViewState createState() => _SignInFormViewState();
}

class _SignInFormViewState extends State<SignInFormView> {
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
                      Constants.invalidUsernameAndPasswordCombo,
                  usernameAlreadyInUse: (_) => null,
                ),
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
        globals.isUnfocused || bottomButtonEnabled == true
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
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.emailChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .emailAddress
                                .value
                                .fold(
                                  (leftFailure) => leftFailure.maybeMap(
                                      authOrReg: (_) => Constants.invalidEmail,
                                      orElse: () => null
                                  ),
                                (rightSuccess) => null,
                              ),
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(
                                  RegExp(r"\s\b|\b\s"))
                            ],
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
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                  (leftFailure) => leftFailure.maybeMap(
                                      authOrReg: (_) =>
                                          Constants.invalidPassword,
                                      orElse: () => null),
                                  (rightSuccess) => null,
                                ),
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(
                                  RegExp(r"\s\b|\b\s"))
                            ],
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
                                  debugPrint('SignIn pressed');
                                  bottomButtonEnabled = true;
                                },
                                textColor: Colors.white,
                                child: Text(Constants.signIn.toUpperCase()),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(height: UIHelper.spaceMedium),
                          GestureDetector(
                            onTap: () {
                              ExtendedNavigator.of(context).push(Routes.registerPage);
                              debugPrint(
                                  'Register pressed'); ///// ---------------------------------------- Move to Register Page!!!!!!

                            },
                            child: Row(
                              children: const <Widget>[
                                Spacer(),
                                Text(
                                  Constants.register,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          if (state.isSubmitting) ...[
                            const SizedBox(height: UIHelper.spaceSmall),
                            const LinearProgressIndicator(
                                backgroundColor: Colors.black)
                          ]
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
                  child: Text(Constants.forgottenSigninDetails,
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center),
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
