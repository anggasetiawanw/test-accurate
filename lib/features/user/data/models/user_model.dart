import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entities.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey() required String id,
    @JsonKey() required String name,
    @JsonKey() required String email,
    @JsonKey() required String phoneNumber,
    @JsonKey() required String address,
    @JsonKey() required String city,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  User toEntity() => User(
        id: id,
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        city: city,
      );
}
