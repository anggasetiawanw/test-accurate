import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {

    factory User({
        @JsonKey() required String id,
        @JsonKey() required String name,
        @JsonKey() required String email,
        @JsonKey() required String phoneNumber,
        @JsonKey() required String address,
        @JsonKey() required String city,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}