// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:test_accurate/core/log/log.dart' as _i97;
import 'package:test_accurate/core/network/http/modules/app_http_modules.dart'
    as _i790;
import 'package:test_accurate/features/user/data/datasource/city_datasource.dart'
    as _i902;
import 'package:test_accurate/features/user/data/datasource/user_datasource.dart'
    as _i216;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i790.AppHttpModule>(() => _i790.AppHttpModule());
  gh.lazySingleton<_i97.Log>(() => _i97.Log());
  gh.lazySingleton<_i902.CityRemoteDataSource>(
      () => _i902.CityRemoteDataSourceImpl());
  gh.lazySingleton<_i216.UserRemoteDataSource>(
      () => _i216.UserRemoteDataSourceImpl());
  return getIt;
}
