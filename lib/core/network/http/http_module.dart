// ignore_for_file: public_member_api_docs, inference_failure_on_function_invocation, lines_longer_than_80_chars

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';

import '../../di/service_locator.dart';
import '../../exceptions/exceptions.dart';
import '../../log/log.dart';
import '../../typedef/typedef.dart';
import 'http_client.dart';

abstract class HttpModule {
  HttpModule(HttpClient client) {
    _client = client;
  }

  @protected
  late HttpClient _client;

  final Log _log = getIt<Log>();

  @protected
  Log get log => _log;

  JSON responseParser(Response<dynamic> response) {
    var data = <String, dynamic>{};

    try {
      if (response.data is List<dynamic>) {
        data = <String, dynamic>{
          'data': response.data,
        };
      } else if (response.data is Map) {
        data = {
          'data': response.data,
        };
      } else {
        data = jsonDecode(response.toString()) as JSON;
      }
    } catch (e) {
      log
        ..console('Parse Error', type: LogType.fatal)
        ..console(
          "Response format isn't as expected | ${response.realUri}",
          type: LogType.fatal,
        );
    }

    return data;
  }

  Future<JSON> _safeCallApi<T>(Future<Response<T>> call) async {
    try {
      final response = await call;
      return responseParser(response);
    } on DioException catch (error) {
      await log.console('Dio Error: ${error.type}', type: LogType.fatal);
      await log.console(error.message ?? '', type: LogType.fatal);

      final dioTimeout = <DioExceptionType>[
        DioExceptionType.connectionTimeout,
        DioExceptionType.receiveTimeout,
        DioExceptionType.sendTimeout,
      ];

      if (dioTimeout.any((element) => error.type == element)) {
        throw TimeoutException(error.message);
      }

      throw AppException(
        message: error.message ?? 'Network Error',
      );
    } on FormatException catch (e) {
      await log.console('FormateException: $e', type: LogType.fatal);
      throw const AppException(
        message: 'There is something wrong while trying to parse the data!',
      );
    } catch (e) {
      await log.console('Exception: $e', type: LogType.fatal);
      rethrow;
    }
  }

  Future<JSON> get(
    String endpoint, {
    JSON? param,
    bool needAuthorization = true,
    bool cache = false,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late Options options;

    options = cache
        ? CacheOptions(
            store: MemCacheStore(),
            maxStale: const Duration(days: 1),
          ).toOptions()
        : Options();

    final response = await _safeCallApi(
      _client.get(
        endpoint,
        queryParameters: param,
        options: options,
        onReceiveProgress: onReceiveProgress,
      ),
    );

    return response;
  }

  Future<JSON> post(
    String endpoint, {
    Object? body,
    JSON? param,
    bool needAuthorization = true,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final options = Options();

    final response = await _safeCallApi(
      _client.post(
        endpoint,
        queryParameters: param,
        data: body,
        onReceiveProgress: onReceiveProgress,
        options: options,
        onSendProgress: onSendProgress,
      ),
    );

    return response;
  }

  Future<JSON> put(
    String endpoint, {
    Object? body,
    JSON? param,
    bool needAuthorization = true,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final options = Options();

    final response = await _safeCallApi(
      _client.put(
        endpoint,
        queryParameters: param,
        data: body,
        onReceiveProgress: onReceiveProgress,
        options: options,
        onSendProgress: onSendProgress,
      ),
    );

    return response;
  }

  Future<JSON> patch(
    String endpoint, {
    Object? body,
    JSON? param,
    bool needAuthorization = true,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final options = Options();

    final response = await _safeCallApi(
      _client.patch(
        endpoint,
        queryParameters: param,
        data: body,
        onReceiveProgress: onReceiveProgress,
        options: options,
        onSendProgress: onSendProgress,
      ),
    );

    return response;
  }

  Future<JSON> delete(
    String endpoint, {
    Object? body,
    JSON? param,
    bool needAuthorization = true,
  }) async {
    final options = Options();

    final response = await _safeCallApi(
      _client.delete(
        endpoint,
        queryParameters: param,
        data: body,
        options: options,
      ),
    );

    return response;
  }
}
