import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/features/user/data/models/city_model.dart';
import 'package:test_accurate/features/user/domain/entities/city_entities.dart';
import 'package:test_accurate/features/user/domain/repositories/city_repository.dart';

import '../../../../core/di/service_locator.dart';
import '../../domain/failures/failures.dart';
import '../datasource/city_datasource.dart';

@LazySingleton(as: CityRepository)
class CityRepositoryImpl implements CityRepository {

    final _httpDataSource = getIt<CityRemoteDataSource>();

  @override
  Future<Either<Failure, List<City>>> getCity() async{
    try {
      final result = await _httpDataSource.get();

      if (result.errors != null) {
        return Left(
          UserFailure(
            message: result.errors?.first.message ?? 'Error',
          ),
        );
      }

      return Right(result.data.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(UserFailure(message: e.toString()));
    }
  }

}