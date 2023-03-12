import 'package:flutter/material.dart';
import 'package:jaho_coding_challenge/my_app.dart';

import 'configs/app_config.dart';
import 'injector/injector.dart';

void main() {
  AppConfig.configDev();
  configureDependencies();
  runApp(const MyApp());
}
