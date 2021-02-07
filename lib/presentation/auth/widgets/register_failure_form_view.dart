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
  final String emailString;
  final String passwordString;
  final String usernameString;

  const RegisterFailureFormView(
      {this.errorMessage,
      this.emailString,
      this.passwordString,
      this.usernameString})
      : super();

  @override
  _RegisterFailureFormViewState createState() =>
      _RegisterFailureFormViewState();
}

class _RegisterFailureFormViewState extends State<RegisterFailureFormView>
    with TickerProviderStateMixin {
  String _errorMessage;
  TextEditingController _emailTextViewController;
  TextEditingController _passwordTextViewController;
  TextEditingController _usernameTextViewController;

  AnimationController fadeAnimationController;
  AnimationController fadeAnimationController2;
  AnimationController fadeAnimationController3;
  AnimationController fadeAnimationController4;
  AnimationController fadeAnimationController5;

  Animation<double> fadeAnimation;
  Animation<double> fadeAnimation2;
  Animation<double> fadeAnimation3;
  Animation<double> fadeAnimation4;
  Animation<double> fadeAnimation5;

  Tween<Offset> tween;

  @override
  void initState() {
    super.initState();
    _errorMessage = widget.errorMessage;
    _emailTextViewController = TextEditingController(text: widget.emailString);
    _passwordTextViewController =
        TextEditingController(text: widget.passwordString);
    _usernameTextViewController =
        TextEditingController(text: widget.usernameString);

    // Fade Animations

    fadeAnimationController = AnimationController(
      vsync: this,
      value: 0,
      duration: const Duration(milliseconds: 1100),
    );
    fadeAnimation = CurvedAnimation(
      parent: fadeAnimationController,
      curve: Curves.easeIn,
    );

    fadeAnimationController2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    fadeAnimation2 = CurvedAnimation(
      parent: fadeAnimationController2,
      curve: Curves.easeIn,
    );

    fadeAnimationController3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1300),
    );
    fadeAnimation3 = CurvedAnimation(
      parent: fadeAnimationController3,
      curve: Curves.easeIn,
    );

    fadeAnimationController4 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
    fadeAnimation4 = CurvedAnimation(
      parent: fadeAnimationController4,
      curve: Curves.easeIn,
    );

    fadeAnimationController5 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    fadeAnimation5 = CurvedAnimation(
      parent: fadeAnimationController5,
      curve: Curves.easeIn,
    );

    fadeAnimationController5.forward();
    Future<void>.delayed(const Duration(milliseconds: 400), () {
      fadeAnimationController4.forward();
    });
    Future<void>.delayed(const Duration(milliseconds: 600), () {
      fadeAnimationController3.forward();
    });
    Future<void>.delayed(const Duration(milliseconds: 800), () {
      fadeAnimationController2.forward();
    });
    Future<void>.delayed(const Duration(milliseconds: 1000), () {
      fadeAnimationController.forward();
    });
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
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SizedBox(
                height: UIHelper.screenHeightWithOutSafeAreaAndAppBar(context),
                width: UIHelper.screenWidth(context),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: UIHelper.safeAreaPadding(context),
                      horizontal: UIHelper.screenWidth(context) * 0.2),
                  child: ListView(
                    children: [
                      FadeTransition(
                        opacity: fadeAnimationController,
                        child: Text(Constants.unableToRegister,
                            style: Theme.of(context).textTheme.subtitle2,
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(height: UIHelper.spaceSmallMedium),
                      FadeTransition(
                        opacity: fadeAnimationController2,
                        child: Text(_errorMessage,
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(height: UIHelper.spaceLarge),
                      FadeTransition(
                        opacity: fadeAnimationController3,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailTextViewController,
                          autocorrect: false,
                          decoration: const InputDecoration()
                              .copyWith(hintText: Constants.email),
                          onChanged: (value) {
                            _emailTextViewController.text = value;
                            _emailTextViewController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset:
                                        _emailTextViewController.text.length));
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
                      ),
                      const SizedBox(height: UIHelper.spaceSmall),
                      FadeTransition(
                        opacity: fadeAnimationController4,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _passwordTextViewController,
                          autocorrect: false,
                          obscureText: true,
                          decoration: const InputDecoration()
                              .copyWith(hintText: Constants.password),
                          onChanged: (value) {
                            _passwordTextViewController.text = value;
                            _passwordTextViewController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _passwordTextViewController
                                        .text.length));
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
                      ),
                      const SizedBox(height: UIHelper.spaceSmall),
                      FadeTransition(
                        opacity: fadeAnimationController5,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _usernameTextViewController,
                          autocorrect: false,
                          decoration: const InputDecoration()
                              .copyWith(hintText: Constants.username),
                          onChanged: (value) {
                            _usernameTextViewController.text = value;
                            _usernameTextViewController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _usernameTextViewController
                                        .text.length));
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
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          RaisedButton(
                            elevation: 0,
                            color: buttonEnabled ? Colors.black : Colors.white,
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
