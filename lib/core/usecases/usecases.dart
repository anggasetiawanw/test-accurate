import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../failure/failure.dart';

abstract class UseCase<Type, Params, Repo> {
  Repo get repo;

  Future<Either<Failure, Type>> call(Params param);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class IDParams extends Equatable {
  const IDParams({required this.id});
  final String id;

  @override
  List<Object?> get props => [id];
}

class PaginationParams extends Equatable {
  const PaginationParams({required this.page});
  final int page;

  @override
  List<Object?> get props => [page];
}
