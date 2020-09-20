import 'package:Cuisson/app_widget.dart';
import 'package:Cuisson/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'presentation/core/global/constants/constants.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(Constants(child: AppWidget()));
}