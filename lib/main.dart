import 'package:Cuisson/app_widget.dart';
import 'package:Cuisson/application/core/global/constants/constants.dart';
import 'package:Cuisson/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(Constants(
      child: AppWidget(),
    ));
  });
}
