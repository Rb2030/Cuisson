import 'package:Cuisson/presentation/core/global/helpers/responsive_screen_config.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    ResponsiveScreenConfig rsc;
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(child: Container(height: rsc.rH(80), width: rsc.rH(40), color: Colors.pink)),
      ),
    );
  }
}
