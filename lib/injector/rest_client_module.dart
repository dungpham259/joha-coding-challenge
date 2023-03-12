import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jaho_coding_challenge/configs/app_config.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio dio() => Dio()..options.baseUrl = AppConfig.baseUrl;

  @singleton
  Logger logger() => Logger();
}
