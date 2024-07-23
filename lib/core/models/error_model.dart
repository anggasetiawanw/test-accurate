// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
abstract class ErrorModel with _$ErrorModel {
  factory ErrorModel({
    @JsonKey() required String message,
    @JsonKey() required int code,
  }) = _ErrorModel;
  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
}
