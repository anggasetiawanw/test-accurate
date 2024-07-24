import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/di/service_locator.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/features/user/domain/repositories/user_repository.dart';

import '../../../../core/usecases/usecases.dart';
import '../entities/user_entities.dart';

@LazySingleton()
class AddNewUser implements UseCase<User, User, UserRepository> {
  @override
  Future<Either<Failure, User>> call(User user) => repo.addUser(user: user);

  @override
  UserRepository get repo => getIt<UserRepository>();
}
