import 'dart:async';
import 'package:Cuisson/application/core/global/colors/custom_colours.dart';
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

  Widget buildTextView(
      {@required int itemIndex, @required RegisterFormState state}) {
    return Form(
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
                height: UIHelper.screenHeightWithOutSafeArea(context) / 5,
                child: Text(state.information,
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            // ignore: avoid_bool_literals_in_conditional_expressions
            Container(
              alignment: Alignment.centerLeft,
              width: UIHelper.screenWidth(context),
              child: Text(pages[itemIndex],
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            const SizedBox(height: UIHelper.spaceSmall),
            TextFormField(
              autocorrect: false,
              // ignore: avoid_bool_literals_in_conditional_expressions
              obscureText: itemIndex == 1 ? true : false,
              // ignore: avoid_redundant_argument_values
              obscuringCharacter: '•',
              decoration:
                  const InputDecoration().copyWith(hintText: pages[itemIndex]),
              onChanged: (value) =>
                  getCurrentOnChanged(page: itemIndex, value: value),
              validator: (_) => getinputValidation(itemIndex).fold(
                (leftFailure) => leftFailure.maybeMap(
                    authOrReg: (_) => getErrorString(page: itemIndex),
                    orElse: () => null),
                (rightSuccess) => null,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
              ],
              onTap: () {
                globals.isUnfocused = false;
              },
            ),
          ],
        ),
      ),
    );
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
        listener: (context, state) {},
        builder: (context, state) {
          final int currentView = context.watch<RegisterFormBloc>().currentView;
          final String buttonText = state.buttonText;
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
          return Scaffold(
            body: Center(
              child: Column(
                children: [
                  SlideTransition(
                      position: animation,
                      child:
                          buildTextView(itemIndex: currentView, state: state)),
                  Row(
                    children: [
                      const Spacer(),
                      RaisedButton(
                        onPressed: () {
                          globals.isUnfocused = false;
                          switch (currentView) {
                            case 0:
                              context.read<RegisterFormBloc>().add(
                                  const RegisterFormEvent.emailButtonClicked());
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
                                      .usernameButtonClicked());
                              break;
                          }
                        },
                        textColor: Colors.white,
                        child: Text(buttonText.toUpperCase()),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(height: UIHelper.spaceMedium),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: UIHelper.spaceSmall),
                    const LinearProgressIndicator(
                        backgroundColor: Colors.black),
                  ],
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: UIHelper.safeAreaPadding(context)),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<RegisterFormBloc>().add(
                                RegisterFormEvent.informationPressed(
                                    currentView));
                          },
                          child: SvgPicture.asset(Constants.informationIcon,
                              color: Colors.black,
                              width: UIHelper.iconSize * 0.8,
                              height: UIHelper.iconSize * 0.8),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(height: UIHelper.spaceSmall),
                  DotsIndicator(
                    dotsCount: 3,
                    position: currentView.toDouble(),
                    decorator: decorator,
                  ),
                  const SizedBox(height: UIHelper.spaceSmallMedium)
                ],
              ),
            ),
          );
        });
  }
}
