import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/features/user/data/datasource/user_datasource.dart';
import 'package:test_accurate/features/user/data/models/user_model.dart';
import 'package:test_accurate/features/user/domain/entities/user_entities.dart';
import 'package:test_accurate/features/user/domain/failures/failures.dart';

import '../../../../core/di/service_locator.dart';
import '../../domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final _httpDataSource = getIt<UserRemoteDataSource>();

  @override
  Future<Either<Failure, List<User>>> getUser() async {
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

  @override
  Future<Either<Failure, List<User>>> getUserByCity({required String city}) async {
    try {
      final result = await _httpDataSource.getByCity(city: city);

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

  @override
  Future<Either<Failure, List<User>>> getUserByName({required String name}) async {
    try {
      final result = await _httpDataSource.getByName(name: name);

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
