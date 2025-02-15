import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/models/api_response_model.dart';
import 'package:test_accurate/features/user/data/models/user_model.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/network/api_endpoint.dart';
import '../../../../core/network/http/modules/app_http_modules.dart';
import '../../../../core/typedef/typedef.dart';

abstract class UserRemoteDataSource {
  Future<ApiResponseModel<List<UserModel>>> get();
  Future<ApiResponseModel<List<UserModel>>> getByName({required String name});
  Future<ApiResponseModel<List<UserModel>>> getByCity({required String city});
  Future<ApiResponseModel<UserModel>> addUser({required UserModel user});
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final _httpModule = getIt<AppHttpModule>();

  @override
  Future<ApiResponseModel<List<UserModel>>> get() async {
    final response = await _httpModule.get(ApiEndpoint.user());

    final result = ApiResponseModel<List<UserModel>>.fromJson(
      response,
      (json) {
        if (json is! List) {
          return [];
        }

        return json.map((e) => UserModel.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }

  @override
  Future<ApiResponseModel<List<UserModel>>> getByCity({required String city}) async {
    final response = await _httpModule.get(ApiEndpoint.user(), param: {'city': city});

    final result = ApiResponseModel<List<UserModel>>.fromJson(
      response,
      (json) {
        if (json is! List) {
          return [];
        }

        return json.map((e) => UserModel.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }

  @override
  Future<ApiResponseModel<List<UserModel>>> getByName({required String name}) async {
    final response = await _httpModule.get(ApiEndpoint.user(), param: {'name': name});

    final result = ApiResponseModel<List<UserModel>>.fromJson(
      response,
      (json) {
        if (json is! List) {
          return [];
        }

        return json.map((e) => UserModel.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }

  @override
  Future<ApiResponseModel<UserModel>> addUser({required UserModel user}) async {
    final response = await _httpModule.post(ApiEndpoint.user(), body: user.toJson());

    final result = ApiResponseModel<UserModel>.fromJson(
      response,
      (json) => UserModel.fromJson(json as JSON),
    );

    return result;
  }
}
