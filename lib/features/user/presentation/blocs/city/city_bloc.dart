import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_accurate/core/di/service_locator.dart';
import 'package:test_accurate/features/user/domain/usecases/get_city.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/entities/city_entities.dart';

part 'city_bloc.freezed.dart';
part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final _getCityUseCase = getIt<GetCity>();

  CityBloc() : super(const CityInitialState()) {
    on<CityEvent>((event, emit) async {
      if (event is _GetCityEvent) {
        emit(const CityLoadingState());
        final result = await _getCityUseCase(NoParams());
        result.fold(
          (failure) => emit(
            CityState.failed(failure: failure),
          ),
          (data) => emit(
            CityState.loaded(
              cities: data,
            ),
          ),
        );
      }
    });
  }
}
