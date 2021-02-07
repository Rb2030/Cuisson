import 'dart:async';
import 'package:Cuisson/application/core/global/colors/custom_colours.dart';
import 'package:Cuisson/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Cuisson/application/auth/register_form_bloc/register_form_bloc.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/domain/core/failures.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;

// ignore: must_be_immutable
class RegisterFormView extends StatefulWidget {
  @override
  _RegisterFormViewState createState() => _RegisterFormViewState();
}

class _RegisterFormViewState extends State<RegisterFormView>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<Offset> animation;
  Tween<Offset> tween;
  List<String> pages = <String>[
    Constants.email,
    Constants.password,
    Constants.username
  ];
  final _textViewController = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastLinearToSlowEaseIn,
    ));

    Future<void>.delayed(const Duration(milliseconds: 1300), () {
      animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void getCurrentOnChanged({@required int page, @required String value}) {
    switch (page) {
      case 0:
        return context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.emailChanged(value));
      case 1:
        return context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.passwordChanged(value));
      case 2:
        return context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.usernameChanged(value));
    }
    throw ArgumentError.notNull();
  }

  dartz.Either<ValueFailure<String>, String> getinputValidation(int page) {
    switch (page) {
      case 0:
        return context.read<RegisterFormBloc>().state.emailAddress.value;
      case 1:
        return context.read<RegisterFormBloc>().state.password.value;
      case 2:
        return context.read<RegisterFormBloc>().state.username.value;
    }
    throw ArgumentError.notNull();
  }

  String getErrorString({@required int page}) {
    switch (page) {
      case 0:
        return Constants.invalidEmail;
      case 1:
        return Constants.invalidPassword;
      case 2:
        return Constants.invalidUsername;
    }
    throw ArgumentError.notNull();
  }

  TextInputType keyBoardType(int page) {
    switch (page) {
      case 0:
        return TextInputType.emailAddress;
      case 1:
        return TextInputType.text;
      case 2:
        return TextInputType.name;
    }
    throw ArgumentError.notNull();
  }

  void showNextView() {
    animation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastLinearToSlowEaseIn,
    ));
    animationController.reset();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
        listenWhen: (s, d) => s.initial == false,
        listener: (context, state) {
          // MARK:- This is for one off actions e.g a flush bar/navigating to new route or showing alert etc
          state.registerFailureOrSuccessOption.fold(
              () {},
              // MARK:- Below is when the registration fails because of server error or email already in use
              (either) => either.fold((failure) {
                    final bool buttonEnabled = state.buttonEnabled;
                    final String emailString = context
                        .read<RegisterFormBloc>()
                        .emailAddressForFailureScreen;
                    final String passwordString = context
                        .read<RegisterFormBloc>()
                        .passwordForFailureScreen;
                    final String usernameString = context
                        .read<RegisterFormBloc>()
                        .usernameForFailureScreen;
                    final String errorMessage = failure.map(
                      cancelledByUser: (_) => Constants.cancelledByUser,
                      serverError: (_) => Constants.serverError,
                      emailAlreadyInUse: (_) => Constants.emailAlreadyInUse,
                      invalidEmailAndPasswordCombination: (_) =>
                          Constants.invalidUsernameAndPasswordCombo,
                      usernameAlreadyInUse: (_) => Constants.usernameTaken,
                    );

                    if (errorMessage == Constants.serverError) {
                      return AlertDialog(
                        title: Text(errorMessage,
                            style: Theme.of(context).textTheme.bodyText1),
                        content: const Text(Constants.pleaseTryAgain),
                        actions: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(Constants.ok),
                          )
                        ],
                      );
                    } else {
                      // ------------------------------------------- All textFields
                      // return BlocProvider(
                      //   create: (context) => getIt<RegisterFormBloc>(),
                      //   child: RegisterFailureFormView(errorMessage),
                      // );
                      // return Center(child: Container(width: 10, height: 10, color: Colors.pink));
                      ExtendedNavigator.of(context).push(
                          Routes.emailAlreadyInUsePage,
                          arguments: EmailAlreadyInUsePageArguments(
                              errorMessage: errorMessage,
                              emailString: emailString,
                              passwordString: passwordString,
                              usernameString: usernameString));
                    }
                  }, (success) {
                    // TODO: This will then do the unique username check in the registerBloc
                  }));
        },
        buildWhen: (s, d) => s.initial == true,
        builder: (context, state) {
          // MARK:- Below is the initial view state (no credentials yet added)
          final int currentView = context.watch<RegisterFormBloc>().currentView;
          final String buttonText = state.buttonText;
          final bool buttonEnabled = state.buttonEnabled;
          //
          const decorator = DotsDecorator(
            activeSize: Size(UIHelper.spaceSmall, 4),
            size: Size(UIHelper.spaceSmall, 4),
            activeShape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(UIHelper.spaceMiniscule))),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(UIHelper.spaceMiniscule))),
            activeColor: Colors.black,
            color: CustomColours.grey,
          );

          // If loading -----------------------------------------------------------------

          if (state.isSubmitting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Initial screen ---------------------------------------------------------------------------------------
          // if (state.initial) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                height: UIHelper.screenHeightWithOutSafeAreaAndAppBar(context),
                width: UIHelper.screenWidth(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SlideTransition(
                      position: animation,
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: UIHelper.safeAreaPadding(context),
                              horizontal: UIHelper.screenWidth(context) * 0.2),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: UIHelper.screenHeightWithOutSafeArea(
                                        context) /
                                    5,
                                child: Text(state.information,
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                              ),
                              // ignore: avoid_bool_literals_in_conditional_expressions
                              Container(
                                alignment: Alignment.centerLeft,
                                width: UIHelper.screenWidth(context),
                                child: Text(pages[currentView],
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ),
                              const SizedBox(height: UIHelper.spaceSmall),
                              TextFormField(
                                keyboardType: keyBoardType(currentView),
                                controller: _textViewController,
                                autocorrect: false,
                                // ignore: avoid_bool_literals_in_conditional_expressions
                                obscureText: currentView == 1 ? true : false,
                                // ignore: avoid_redundant_argument_values
                                obscuringCharacter: '•',
                                decoration: const InputDecoration()
                                    .copyWith(hintText: pages[currentView]),
                                onChanged: (value) {
                                  _textViewController.text = value;
                                  _textViewController.selection =
                                      TextSelection.fromPosition(TextPosition(
                                          offset: _textViewController.text
                                              .length)); // Puts the cursor at the end of the text
                                  return getCurrentOnChanged(
                                      page: currentView, value: value);
                                },
                                validator: (_) =>
                                    getinputValidation(currentView).fold(
                                  (leftFailure) => leftFailure.maybeMap(
                                      authOrReg: (_) {
                                        context.read<RegisterFormBloc>().add(
                                            const RegisterFormEvent
                                                .disableButton());
                                        return getErrorString(
                                            page: currentView);
                                      },
                                      orElse: () => null),
                                  (rightSuccess) => null,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                      RegExp(r"\s\b|\b\s"))
                                ],
                                onTap: () {
                                  globals.isUnfocused = false;
                                },
                              ),
                              const SizedBox(height: UIHelper.spaceSmall),
                              Visibility(
                                visible: !buttonEnabled,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        context.read<RegisterFormBloc>().add(
                                            RegisterFormEvent
                                                .informationPressed(
                                                    currentView));
                                      },
                                      child: SvgPicture.asset(
                                          Constants.informationIcon,
                                          color: Colors.black,
                                          width: UIHelper.iconSize * 0.8,
                                          height: UIHelper.iconSize * 0.8),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
                              context
                                  .read<RegisterFormBloc>()
                                  .add(const RegisterFormEvent.disableButton());
                              //   FocusScope.of(context).unfocus();
                              _textViewController.clear();
                              globals.isUnfocused = true;
                              switch (currentView) {
                                case 0:
                                  context.read<RegisterFormBloc>().add(
                                      const RegisterFormEvent
                                          .emailButtonClicked());
                                  showNextView();
                                  animationController.forward();
                                  break;
                                case 1:
                                  context.read<RegisterFormBloc>().add(
                                      const RegisterFormEvent
                                          .passwordButtonClicked());
                                  showNextView();
                                  animationController.forward();
                                  break;
                                case 2:
                                  context.read<RegisterFormBloc>().add(
                                      const RegisterFormEvent
                                          .submitRegisterCredentials());
                                  break;
                              }
                            }
                          },
                          textColor: Colors.white,
                          child: Text(buttonText.toUpperCase()),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const Spacer(),
                    DotsIndicator(
                      dotsCount: 3,
                      position: currentView.toDouble(),
                      decorator: decorator,
                    ),
                    const SizedBox(height: UIHelper.spaceSmallMedium),
                  ],
                ),
              ),
            ),
          );
          //     );
        });
  }
}
