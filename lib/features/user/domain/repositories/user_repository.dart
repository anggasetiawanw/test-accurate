import 'package:test_accurate/features/user/domain/entities/user_entities.dart';
import '../../../../core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUser();
  Future<Either<Failure, List<User>>> getUserByName({required String name});
  Future<Either<Failure, List<User>>> getUserByCity({required String city});
}
