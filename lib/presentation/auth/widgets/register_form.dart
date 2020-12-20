import 'package:Cuisson/application/auth/register_form_bloc/register_form_bloc.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/presentation/core/global/helpers/ui_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Cuisson/domain/core/failures.dart';
import 'package:Cuisson/application/core/global/globals/globals.dart'
    as globals;
import 'package:carousel_slider/carousel_slider.dart';

class RegisterForm extends StatelessWidget {
  final CarouselController carouselController = CarouselController();
  final List<String> pages = <String>[
    Constants.email,
    Constants.password,
    Constants.username
  ];

  void getCurrentOnChanged(int page, String value, BuildContext newContext) {
    switch (page) {
      case 0:
        return newContext
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.emailChanged(value));
      case 1:
        return newContext
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.passwordChanged(value));
      case 2:
        return newContext
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.usernameChanged(value));
    }
    throw ArgumentError.notNull();
  }

  Either<ValueFailure<String>, String> getinputValidation(
      int page, BuildContext newContext) {
    switch (page) {
      case 0:
        return newContext.read<RegisterFormBloc>().state.emailAddress.value;
      case 1:
        return newContext.read<RegisterFormBloc>().state.password.value;
      case 2:
        return newContext.read<RegisterFormBloc>().state.username.value;
    }
    throw ArgumentError.notNull();
  }

  String getErrorString(int page) {
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

  @override
  Widget build(BuildContext context) {
    bool bottomButtonEnabled = true;
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          globals.isUnfocused || bottomButtonEnabled == true
              ? bottomButtonEnabled = true
              : bottomButtonEnabled = false;
          return Scaffold(
            body: Align(
              child: SizedBox(
                width: UIHelper.screenWidth(context) / 1.7,
                child: Column(
                  children: <Widget>[
                    CarouselSlider.builder(
                      itemCount: pages.length,
                      carouselController: carouselController,
                      itemBuilder: (BuildContext context, int itemIndex) {
                        return Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return ListView(
                                children: [
                                  SizedBox(
                                      height:
                                          UIHelper.screenHeightWithOutSafeArea(
                                                  context) /
                                              14),
                                  Row(
                                    children: [
                                      const Spacer(),
                                      Text(pages[itemIndex],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                      const Spacer(),
                                    ],
                                  ),
                                  const SizedBox(height: UIHelper.spaceHuge),
                                  TextFormField(
                                    autocorrect: false,
                                    // ignore: avoid_bool_literals_in_conditional_expressions
                                    obscureText: itemIndex == 1 ? true : false,
                                    // ignore: avoid_redundant_argument_values
                                    obscuringCharacter: '•',
                                    decoration: const InputDecoration()
                                        .copyWith(hintText: pages[itemIndex]),
                                    onChanged: (value) => getCurrentOnChanged(
                                        itemIndex, value, context),
                                    validator: (_) =>
                                        getinputValidation(itemIndex, context)
                                            .fold(
                                      (leftFailure) => leftFailure.maybeMap(
                                          authOrReg: (_) =>
                                              getErrorString(itemIndex),
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
                                ],
                              );
                            },
                          ),
                        );
                      },
                      options: CarouselOptions(viewportFraction: 0.9),
                    ),
                    const SizedBox(height: UIHelper.spaceLarge),
                    Row(
                      children: [
                        const Spacer(),
                        RaisedButton(
                          onPressed: () {
                            carouselController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear);
                            debugPrint('Next pressed');
                            bottomButtonEnabled = true;
                          },
                          textColor: Colors.white,
                          child: Text(Constants.next.toUpperCase()),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: UIHelper.spaceMedium),
                    GestureDetector(
                      onTap: () {
                        debugPrint(
                            'Login page requested pressed'); ///// ---------------------------------------- Move to Login Page!!!!!!
                      },
                      child: Row(
                        children: const <Widget>[
                          Spacer(),
                          Text(
                            Constants.logIn,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    if (state.isSubmitting) ...[
                      const SizedBox(height: UIHelper.spaceSmall),
                      const LinearProgressIndicator(
                          backgroundColor: Colors.black),
                    ],
                  ],
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
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center),
                  ),
                ),
                const Spacer()
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          );
        });
  }
}
