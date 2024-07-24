import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_accurate/core/di/service_locator.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/features/user/domain/usecases/get_all_user.dart';

import '../../../../../core/usecases/usecases.dart';
import '../../../domain/entities/user_entities.dart';
import '../../../domain/usecases/get_user_by_city.dart';
import '../../../domain/usecases/get_user_by_name.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final _allUserUseCase = getIt<GetAllUser>();
  final _userByNameUseCase = getIt<GetUserByName>();
  final _userByCityUseCase = getIt<GetUserByCity>();

  UserBloc() : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      if (event is _GetUserEvent) {
        emit(const UserState.loading());
        final result = await _allUserUseCase(NoParams());
        result.fold(
          (failure) => emit(
            UserState.failed(failure: failure),
          ),
          (data) => emit(
            UserState.loaded(
              users: data,
            ),
          ),
        );
      } else if (event is _GetUserByCityEvent) {
        emit(const UserState.loading());
        final result = await _userByCityUseCase(event.city);
        result.fold(
          (failure) => emit(
            UserState.failed(failure: failure),
          ),
          (data) => emit(
            UserState.loaded(
              users: data,
            ),
          ),
        );
      } else if (event is _GetUserByNameEvent) {
        emit(const UserState.loading());
        final result = await _userByNameUseCase(event.name);
        result.fold(
          (failure) => emit(
            UserState.failed(failure: failure),
          ),
          (data) => emit(
            UserState.loaded(
              users: data,
            ),
          ),
        );
      } else if (event is _SortUserDataEvent) {
        final currentState = state;
        if (currentState is UserLoadedState) {
          List<User> sortedData = List<User>.from(currentState.users);
          sortedData.sort((a, b) => event.isAscending ? a.name.compareTo(b.name) : b.name.compareTo(a.name));

          emit(UserState.loaded(users: sortedData));
        }
      }
    });
  }
}
