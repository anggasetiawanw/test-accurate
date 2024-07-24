import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/usecases/usecases.dart';
import 'package:test_accurate/features/user/domain/entities/city_entities.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/failure/failure.dart';
import '../repositories/city_repository.dart';

@LazySingleton()
class GetCity implements UseCase<List<City>, NoParams, CityRepository> {
  @override
  Future<Either<Failure, List<City>>> call(NoParams param) => repo.getCity();

  @override
  CityRepository get repo => getIt<CityRepository>();
}
