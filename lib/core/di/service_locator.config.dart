// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:test_accurate/core/di/register_module.dart' as _i713;
import 'package:test_accurate/core/log/log.dart' as _i97;
import 'package:test_accurate/core/network/http/http_client.dart' as _i377;
import 'package:test_accurate/core/network/http/modules/app_http_modules.dart'
    as _i790;
import 'package:test_accurate/features/user/data/datasource/city_datasource.dart'
    as _i902;
import 'package:test_accurate/features/user/data/datasource/user_datasource.dart'
    as _i216;
import 'package:test_accurate/features/user/data/repositories/city_repository_impl.dart'
    as _i470;
import 'package:test_accurate/features/user/data/repositories/user_repository_impl.dart'
    as _i405;
import 'package:test_accurate/features/user/domain/repositories/city_repository.dart'
    as _i462;
import 'package:test_accurate/features/user/domain/repositories/user_repository.dart'
    as _i557;
import 'package:test_accurate/features/user/domain/usecases/add_user.dart'
    as _i543;
import 'package:test_accurate/features/user/domain/usecases/get_all_user.dart'
    as _i255;
import 'package:test_accurate/features/user/domain/usecases/get_city.dart'
    as _i721;
import 'package:test_accurate/features/user/domain/usecases/get_user_by_city.dart'
    as _i566;
import 'package:test_accurate/features/user/domain/usecases/get_user_by_name.dart'
    as _i497;

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
  final registerModule = _$RegisterModule();
  gh.factory<_i974.Logger>(() => registerModule.logger);
  gh.factory<_i377.HttpClient>(() => registerModule.httpClient);
  gh.lazySingleton<_i790.AppHttpModule>(() => _i790.AppHttpModule());
  gh.lazySingleton<_i97.Log>(() => _i97.Log());
  gh.lazySingleton<_i255.GetAllUser>(() => _i255.GetAllUser());
  gh.lazySingleton<_i566.GetUserByCity>(() => _i566.GetUserByCity());
  gh.lazySingleton<_i497.GetUserByName>(() => _i497.GetUserByName());
  gh.lazySingleton<_i543.AddNewUser>(() => _i543.AddNewUser());
  gh.lazySingleton<_i721.GetCity>(() => _i721.GetCity());
  gh.lazySingleton<_i557.UserRepository>(() => _i405.UserRepositoryImpl());
  gh.lazySingleton<_i902.CityRemoteDataSource>(
      () => _i902.CityRemoteDataSourceImpl());
  gh.lazySingleton<_i216.UserRemoteDataSource>(
      () => _i216.UserRemoteDataSourceImpl());
  gh.lazySingleton<_i462.CityRepository>(() => _i470.CityRepositoryImpl());
  return getIt;
}

class _$RegisterModule extends _i713.RegisterModule {}
