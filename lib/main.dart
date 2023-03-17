import 'package:flutter/material.dart';

import 'package:jaho_coding_challenge/configs/app_config.dart';
import 'package:jaho_coding_challenge/injector/injector.dart';

import 'package:jaho_coding_challenge/my_app.dart';

void main() {
  AppConfig.configDev();
  configureDependencies();
  runApp(const MyApp());
}
