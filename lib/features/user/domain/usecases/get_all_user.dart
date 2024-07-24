import 'package:dartz/dartz.dart';
import 'package:test_accurate/core/di/service_locator.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/core/usecases/usecases.dart';
import 'package:test_accurate/features/user/domain/repositories/user_repository.dart';

import '../entities/user_entities.dart';

class GetAllUser implements UseCase<List<User>, NoParams, UserRepository> {
  @override
  Future<Either<Failure, List<User>>> call(NoParams param) => repo.getUser();

  @override
  UserRepository get repo => getIt<UserRepository>();
}
