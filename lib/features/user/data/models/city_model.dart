import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_accurate/features/user/domain/entities/city_entities.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
abstract class CityModel with _$CityModel {
  factory CityModel({
    @JsonKey() required String id,
    @JsonKey() required String name,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}

extension CityModelX on CityModel {
  City toEntity() => City(
        id: id,
        name: name,
      );
}
