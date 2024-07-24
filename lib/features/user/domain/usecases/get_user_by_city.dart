import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/di/service_locator.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/core/usecases/usecases.dart';
import 'package:test_accurate/features/user/domain/entities/user_entities.dart';
import 'package:test_accurate/features/user/domain/repositories/user_repository.dart';

@LazySingleton()
class GetUserByCity implements UseCase<List<User>, String, UserRepository> {
  @override
  Future<Either<Failure, List<User>>> call(String param) => repo.getUserByCity(city: param);

  @override
  UserRepository get repo => getIt<UserRepository>();
}
