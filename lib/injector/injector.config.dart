// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jaho_coding_challenge/data/repositories/user/remote/user_reposiory.dart'
    as _i7;
import 'package:jaho_coding_challenge/data/repositories/user/remote/user_repository_impl.dart'
    as _i8;
import 'package:jaho_coding_challenge/features/home/bloc/user_bloc.dart' as _i9;
import 'package:jaho_coding_challenge/services/log_service/debug_log_service.dart'
    as _i5;
import 'package:jaho_coding_challenge/services/log_service/log_service.dart'
    as _i4;
import 'package:logger/logger.dart' as _i6;

import 'rest_client_module.dart' as _i10;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Dio>(registerModule.dio());
  gh.factory<_i4.LogService>(
      () => _i5.DebugLogService(logger: gh<_i6.Logger>()));
  gh.singleton<_i6.Logger>(registerModule.logger());
  gh.factory<_i7.UserRepository>(() => _i8.UserRepositoryImpl(gh<_i3.Dio>()));
  gh.factory<_i9.UserBloc>(() => _i9.UserBloc(
        userRepository: gh<_i7.UserRepository>(),
        logService: gh<_i4.LogService>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i10.RegisterModule {}
