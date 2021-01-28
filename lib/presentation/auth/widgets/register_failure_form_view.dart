import 'package:Cuisson/application/auth/register_form_bloc/register_form_bloc.dart';
import 'package:Cuisson/application/core/global/colors/custom_colours.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;

class RegisterFailureFormView extends StatefulWidget {
  final String errorMessage;

  const RegisterFailureFormView(this.errorMessage) : super();

  @override
  _RegisterFailureFormViewState createState() =>
      _RegisterFailureFormViewState();
}

class _RegisterFailureFormViewState extends State<RegisterFailureFormView> {
  final _textViewController = TextEditingController(text: '');
  String _errorMessage;

  @override
  void initState() {
    super.initState();
    _errorMessage = widget.errorMessage;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
        listener: (context, state) {
      // This is for one off actions e.g a flush bar etc
    }, builder: (context, state) {
      //
      final bool buttonEnabled = state.buttonEnabled;
      bool bottomButtonEnabled = true;
      globals.isUnfocused || bottomButtonEnabled == true
          ? bottomButtonEnabled = true
          : bottomButtonEnabled = false;

      //
      return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: UIHelper.screenHeightWithOutSafeArea(context),
            width: UIHelper.screenWidth(context),
            child: AnimatedCrossFade(
              firstChild: const CircularProgressIndicator(),
              crossFadeState: CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 1400),
              secondChild: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SizedBox(
                  height:
                      UIHelper.screenHeightWithOutSafeAreaAndAppBar(context),
                  width: UIHelper.screenWidth(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: UIHelper.safeAreaPadding(context),
                        horizontal: UIHelper.screenWidth(context) * 0.2),
                    child: ListView(
                      children: [
                        Text(Constants.unableToRegister,
                            style: Theme.of(context).textTheme.subtitle2,
                            textAlign: TextAlign.center),
                        const SizedBox(height: UIHelper.spaceSmallMedium),
                        Text(_errorMessage,
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center),
                        const SizedBox(height: UIHelper.spaceLarge),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _textViewController,
                          autocorrect: false,
                          decoration: const InputDecoration()
                              .copyWith(hintText: Constants.email),
                          initialValue: context
                              .watch<RegisterFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold((l) => null, (r) => r),
                          onChanged: (value) {
                            _textViewController.text = value;
                            _textViewController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _textViewController.text.length));
                            context
                                .read<RegisterFormBloc>()
                                .add(RegisterFormEvent.emailChanged(value));
                          },
                          validator: (_) => context
                              .read<RegisterFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                (leftFailure) => leftFailure.maybeMap(
                                    authOrReg: (_) {
                                      context.read<RegisterFormBloc>().add(
                                          const RegisterFormEvent
                                              .disableButton());
                                      return Constants.invalidEmail;
                                    },
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
                        const SizedBox(height: UIHelper.spaceSmall),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _textViewController,
                          autocorrect: false,
                          obscureText: true,
                          decoration: const InputDecoration()
                              .copyWith(hintText: Constants.password),
                          initialValue: context
                              .watch<RegisterFormBloc>()
                              .state
                              .password
                              .value
                              .fold((l) => null, (r) => r),
                          onChanged: (value) {
                            _textViewController.text = value;
                            _textViewController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _textViewController.text.length));
                            context
                                .read<RegisterFormBloc>()
                                .add(RegisterFormEvent.passwordChanged(value));
                          },
                          validator: (_) => context
                              .read<RegisterFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (leftFailure) => leftFailure.maybeMap(
                                    authOrReg: (_) {
                                      context.read<RegisterFormBloc>().add(
                                          const RegisterFormEvent
                                              .disableButton());
                                      return Constants.invalidPassword;
                                    },
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
                        const SizedBox(height: UIHelper.spaceSmall),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _textViewController,
                          autocorrect: false,
                          decoration: const InputDecoration()
                              .copyWith(hintText: Constants.username),
                          initialValue: context
                              .watch<RegisterFormBloc>()
                              .state
                              .username
                              .value
                              .fold((l) => null, (r) => r),
                          onChanged: (value) {
                            _textViewController.text = value;
                            _textViewController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _textViewController.text.length));
                            context
                                .read<RegisterFormBloc>()
                                .add(RegisterFormEvent.usernameChanged(value));
                          },
                          validator: (_) => context
                              .read<RegisterFormBloc>()
                              .state
                              .username
                              .value
                              .fold(
                                (leftFailure) => leftFailure.maybeMap(
                                    authOrReg: (_) {
                                      context.read<RegisterFormBloc>().add(
                                          const RegisterFormEvent
                                              .disableButton());
                                      return Constants.invalidUsername;
                                    },
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
                        Row(
                          children: [
                            const Spacer(),
                            RaisedButton(
                              elevation: 0,
                              color:
                                  buttonEnabled ? Colors.black : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    UIHelper.buttonCornerRadius),
                              ),
                              onPressed: () {
                                if (buttonEnabled) {
                                  context.read<RegisterFormBloc>().add(
                                      const RegisterFormEvent
                                          .submitRegisterCredentials());
                                  bottomButtonEnabled = false;
                                  globals.isUnfocused = false;
                                }
                              },
                              textColor: Colors.white,
                              child: Text(Constants.submit.toUpperCase()),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: CustomColours.grey),
                    textAlign: TextAlign.center),
              ),
            ),
            const Spacer()
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );

      // state.uniqueUsernameFailureOrSuccessOption.fold(
      //   () {},
      //   (either) => either.fold((failure) {
      //     final bool buttonEnabled = state.buttonEnabled;
      //     final String errorMessage = failure.map(
      //       cancelledByUser: (_) => Constants.cancelledByUser,
      //       serverError: (_) => Constants.serverError,
      //       emailAlreadyInUse: (_) => Constants.emailAlreadyInUse,
      //       invalidEmailAndPasswordCombination: (_) =>
      //           Constants.invalidUsernameAndPasswordCombo,
      //       usernameAlreadyInUse: (_) => Constants.usernameTaken,
      //     );
      //     return AnimatedCrossFade(
      //       firstChild: const CircularProgressIndicator(),
      //       crossFadeState: CrossFadeState.showSecond,
      //       duration: const Duration(milliseconds: 1400),
      //       secondChild: ListView(
      //         shrinkWrap: true,
      //         children: [
      //           SizedBox(
      //               height: UIHelper.screenHeightWithOutSafeArea(context) / 5,
      //               child: Text(errorMessage,
      //                   style: Theme.of(context).textTheme.bodyText1)),
      //           const SizedBox(height: UIHelper.spaceSmall),
      //           TextFormField(
      //             keyboardType: TextInputType.text,
      //             controller: _textViewController,
      //             autocorrect: false,
      //             decoration: const InputDecoration()
      //                 .copyWith(hintText: Constants.username),
      //             onChanged: (value) {
      //               _textViewController.text = value;
      //               _textViewController.selection = TextSelection.fromPosition(
      //                   TextPosition(
      //                       offset: _textViewController.text
      //                           .length)); // Puts the cursor at the end of the text
      //               return getCurrentOnChanged(page: 2, value: value);
      //             },
      //             validator: (_) => getinputValidation(2).fold(
      //               (leftFailure) => leftFailure.maybeMap(
      //                   authOrReg: (_) {
      //                     context
      //                         .read<RegisterFormBloc>()
      //                         .add(const RegisterFormEvent.disableButton());
      //                     return getErrorString(page: 2);
      //                   },
      //                   orElse: () => null),
      //               (rightSuccess) => null,
      //             ),
      //             inputFormatters: [
      //               FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
      //             ],
      //             onTap: () {
      //               globals.isUnfocused = false;
      //             },
      //           ),
      //         ],
      //       ),
      //     );
      //   }, (success) {
      //     // TODO:- Navigate to the main menu
      //   }),
      // );
    });
  }
}
