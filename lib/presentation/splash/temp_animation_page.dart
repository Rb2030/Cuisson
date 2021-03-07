import 'dart:async';
import 'package:Cuisson/application/core/global/colors/custom_colours.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:Cuisson/presentation/core/global/helpers/responsive_screen_config.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class TempAnimationPage extends StatefulWidget {
  @override
  _TempAnimationPageState createState() => _TempAnimationPageState();
}

class _TempAnimationPageState extends State<TempAnimationPage>
    with TickerProviderStateMixin {
  final player = AudioCache();
  AnimationController bouncingAnimationController;
  AnimationController spinAnimationController1;
  AnimationController spinAnimationController2;
  AnimationController fadeAnimationController;
  double responsiveBoxSize = 6;
  Color bgColor = Colors.white;

  Animation<double> fadeAnimation;
  bool _firstButtonVisible = true;
  bool _secondButtonVisible = false;
  bool animationFinished = false;

  @override
  void initState() {
    super.initState();

    bouncingAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    spinAnimationController1 = AnimationController(
      vsync: this,
      value: 0,
      duration: const Duration(milliseconds: 800),
    );
    spinAnimationController2 = AnimationController(
      vsync: this,
      value: 0,
      duration: const Duration(milliseconds: 800),
    );
    fadeAnimationController = AnimationController(
      vsync: this,
      value: 0,
      duration: const Duration(milliseconds: 1000),
    );
    fadeAnimation = CurvedAnimation(
      parent: fadeAnimationController,
      curve: Curves.easeIn,
    );

    // Starting the animations
    bouncingAnimationController.forward().then((value) {
      responsiveBoxSize = 5.5;
      setState(() {});
      player.play('click_click_click.mp3');
      Future<void>.delayed(const Duration(milliseconds: 600), () {
        spinAnimationController1.forward(from: 0).then((value) {
          setState(() {
            _secondButtonVisible = true;
            _firstButtonVisible = false;
          });
          Future<void>.delayed(const Duration(milliseconds: 1600), () {
            spinAnimationController2.forward(from: 0).then((value) {
              setState(() {
                animationFinished = true;
              });
              Future<void>.delayed(const Duration(milliseconds: 200), () {
                responsiveBoxSize = 2.6;
                bgColor = CustomColours.crokettYellow;
                setState(() {});
                fadeAnimationController.forward();
              });
            });
          });
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final ResponsiveScreenConfig rsc = ResponsiveScreenConfig(context);
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      color: bgColor,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Align(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: rsc.rWP(100),
                height: rsc.rHP(100),
                color: bgColor,
                child: Center(
                  child: Row(
                    children: [
                      const Spacer(),
                      FadeTransition(
                        opacity: fadeAnimationController,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                            'CR',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontFamily: 'CarinoSans'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 1),
                      Stack(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 700),
                            height: rsc.rH(responsiveBoxSize),
                            width: rsc.rH(responsiveBoxSize),
                            child: Visibility(
                              visible: _firstButtonVisible,
                              child: RotationTransition(
                                turns: Tween(begin: 0.0, end: 0.4)
                                    .animate(spinAnimationController1),
                                child: Image.asset('assets/images/power_1.png'),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: rsc.rH(responsiveBoxSize),
                            width: rsc.rH(responsiveBoxSize),
                            child: Visibility(
                              visible: _secondButtonVisible,
                              child: RotationTransition(
                                turns: Tween(begin: 0.4, end: 0.1)
                                    .animate(spinAnimationController2),
                                child: Image.asset('assets/images/power_2.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 1),
                      FadeTransition(
                        opacity: fadeAnimationController,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                            'KETT',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontFamily: 'CarinoSans'),
                          ),
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomColors {
}
