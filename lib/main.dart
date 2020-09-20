import 'package:Cuisson/injection/injection.dart';
import 'package:Cuisson/app_widget.dart';
import 'package:Cuisson/presentation/core/global/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(Constants(child: AppWidget()));
}