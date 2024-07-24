// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_model.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResponseModel<T> with _$ApiResponseModel<T> {
  factory ApiResponseModel({
    @JsonKey() required T data,
    @JsonKey() List<ErrorModel>? errors,
  }) = _ApiResponseModel;
  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJson,
  ) =>
      _$ApiResponseModelFromJson(
        json,
        fromJson,
      );
}
