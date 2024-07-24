part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser() = _GetUserEvent;
  const factory UserEvent.getUserByName({required String name}) = _GetUserByNameEvent;
  const factory UserEvent.getUserByCity({required String city}) = _GetUserByCityEvent;
  const factory UserEvent.sortUserData({required bool isAscending}) = _SortUserDataEvent;
  const factory UserEvent.addUser({required User user}) = _AddUserEvent;
}
