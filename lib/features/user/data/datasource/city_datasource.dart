import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/models/api_response_model.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/network/api_endpoint.dart';
import '../../../../core/network/http/modules/app_http_modules.dart';
import '../../../../core/typedef/typedef.dart';
import '../models/city_model.dart';

abstract class CityRemoteDataSource {
  Future<ApiResponseModel<List<CityModel>>> get();
}

@LazySingleton(as: CityRemoteDataSource)
class CityRemoteDataSourceImpl implements CityRemoteDataSource {
  final _httpModule = getIt<AppHttpModule>();

  @override
  Future<ApiResponseModel<List<CityModel>>> get() async {
    final response = await _httpModule.get(ApiEndpoint.city());
    
    final result = ApiResponseModel<List<CityModel>>.fromJson(
      response,
      (json) {
        
        if (json is! List) {
          return [];
        }

        return json.map((e) => CityModel.fromJson(e as JSON)).toList();
      },
    );

    return result;
  }
}
