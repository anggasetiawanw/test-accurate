import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/models/api_response_model.dart';
import 'package:test_accurate/features/user/data/models/user_model.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/network/api_endpoint.dart';
import '../../../../core/network/http/modules/app_http_modules.dart';
import '../../../../core/typedef/typedef.dart';

abstract class UserRemoteDataSource {
  Future<ApiResponseModel<List<User>>> get();
  Future<ApiResponseModel<List<User>>> getByName({required String name});
  Future<ApiResponseModel<List<User>>> getByCity({required String city});
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final _httpModule = getIt<AppHttpModule>();

  @override
  Future<ApiResponseModel<List<User>>> get() async {
    final response = await _httpModule.get(ApiEndpoint.user());

    final result = ApiResponseModel<List<User>>.fromJson(
      response,
      (json) {
        if (json is! List) {
          return [];
        }

        return json.map((e) => User.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }

  @override
  Future<ApiResponseModel<List<User>>> getByCity({required String city}) async {
    final response = await _httpModule.get(ApiEndpoint.user(), param: {'city': city});

    final result = ApiResponseModel<List<User>>.fromJson(
      response,
      (json) {
        if (json is! List) {
          return [];
        }

        return json.map((e) => User.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }

  @override
  Future<ApiResponseModel<List<User>>> getByName({required String name}) async {
    final response = await _httpModule.get(ApiEndpoint.user(), param: {'name': name});

    final result = ApiResponseModel<List<User>>.fromJson(
      response,
      (json) {
        if (json is! List) {
          return [];
        }

        return json.map((e) => User.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }
}
