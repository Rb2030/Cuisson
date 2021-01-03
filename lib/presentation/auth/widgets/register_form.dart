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

  void getCurrentOnChanged(
      {@required int page,
      @required String value,
      @required BuildContext newContext}) {
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: pages.length,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height:
                          UIHelper.screenHeightWithOutSafeArea(context) * 0.7,
                    ),
                    carouselController: carouselController,
                    itemBuilder: (BuildContext context, int itemIndex) {
                      return Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: UIHelper.safeAreaPadding,
                                  horizontal: UIHelper.screenWidth(context) * 0.2),
                              child: ListView(
                                children: [
                                  SizedBox(
                                      height:
                                          UIHelper.screenHeightWithOutSafeArea(
                                                  context) /
                                              14),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: UIHelper.screenWidth(context),
                                    child: Text(pages[itemIndex],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ),
                                  const SizedBox(height: UIHelper.spaceSmall),
                                  TextFormField(
                                    autocorrect: false,
                                    // ignore: avoid_bool_literals_in_conditional_expressions
                                    obscureText: itemIndex == 1 ? true : false,
                                    // ignore: avoid_redundant_argument_values
                                    obscuringCharacter: '•',
                                    decoration: const InputDecoration()
                                        .copyWith(hintText: pages[itemIndex]),
                                    onChanged: (value) => getCurrentOnChanged(
                                        page: itemIndex,
                                        value: value,
                                        newContext: context),
                                    validator: (_) =>
                                        getinputValidation(itemIndex, context)
                                            .fold(
                                      (leftFailure) => leftFailure.maybeMap(
                                          authOrReg: (_) =>
                                              getErrorString(page: itemIndex),
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
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      RaisedButton(
                        onPressed: () {
                          globals.isUnfocused = true;
                          carouselController.nextPage(
                              duration: const Duration(milliseconds: 450),
                              curve: Curves.linear);
                          debugPrint('Next pressed');
                        },
                        textColor: Colors.white,
                        child: Text(Constants.next.toUpperCase()),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: UIHelper.spaceMedium),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: UIHelper.spaceSmall),
                    const LinearProgressIndicator(
                        backgroundColor: Colors.black),
                  ],
                ],
              ),
            ),
          );
        });
  }
}
