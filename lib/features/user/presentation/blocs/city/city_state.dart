part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
  const factory CityState.initial() = CityInitialState;
  const factory CityState.loading() = CityLoadingState;
  const factory CityState.loaded({required List<City> cities}) = CityLoadedState;
  const factory CityState.failed({required Failure failure}) = CityFailureState;
}
