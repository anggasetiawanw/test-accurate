part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitialState;
  const factory UserState.loading() = UserLoadingState;
  const factory UserState.loaded({required List<User> users}) = UserLoadedState;
  const factory UserState.failed({required Failure failure}) = UserFailedState;
}
