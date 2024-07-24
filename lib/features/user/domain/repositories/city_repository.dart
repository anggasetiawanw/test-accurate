import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../entities/city_entities.dart';

abstract class CityRepository {
  Future<Either<Failure, List<City>>> getCity();
}
