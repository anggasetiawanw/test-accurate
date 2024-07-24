import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_accurate/core/di/service_locator.dart';
import 'package:test_accurate/core/failure/failure.dart';
import 'package:test_accurate/features/user/domain/usecases/get_all_user.dart';

import '../../../../../core/usecases/usecases.dart';
import '../../../domain/entities/user_entities.dart';
import '../../../domain/usecases/add_user.dart';
import '../../../domain/usecases/get_user_by_city.dart';
import '../../../domain/usecases/get_user_by_name.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final _allUserUseCase = getIt<GetAllUser>();
  final _userByNameUseCase = getIt<GetUserByName>();
  final _userByCityUseCase = getIt<GetUserByCity>();
  final _addUserUseCase = getIt<AddNewUser>();
  bool hasSorted = true;
  bool lastIsAscending = true;

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
              users: hasSorted ? sortedData(data) : data,
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
              users: hasSorted ? sortedData(data) : data,
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
              users: hasSorted ? sortedData(data) : data,
            ),
          ),
        );
      } else if (event is _SortUserDataEvent) {
        final currentState = state;
        if (currentState is UserLoadedState) {
          lastIsAscending = event.isAscending;
          hasSorted = true;
          emit(UserState.loaded(users: sortedData(currentState.users)));
        }
      } else if (event is _AddUserEvent) {
        emit(const UserState.loading());
        final result = await _addUserUseCase(event.user);
        result.fold(
          (failure) => emit(
            UserState.failed(failure: failure),
          ),
          (data)  {
            emit(const UserState.added());
          },
        );
      }
    });
  }

  List<User> sortedData(List<User> data) {
    List<User> sortedData = List<User>.from(data);
    sortedData.sort((a, b) => !lastIsAscending ? b.name.compareTo(a.name) : a.name.compareTo(b.name));
    return sortedData;
  }
}
