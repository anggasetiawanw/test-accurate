import 'package:dartz/dartz.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/user_entities.dart';
import '../repositories/user_repository.dart';

class GetUserByName implements UseCase<List<User>, String, UserRepository> {
  @override
  Future<Either<Failure, List<User>>> call(String param) => repo.getUserByName(name: param);

  @override
  UserRepository get repo => getIt<UserRepository>();
}