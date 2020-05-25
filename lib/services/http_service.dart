// 🎯 Dart imports:
import 'dart:convert';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:baseapp/shared/exceptions.dart';
import 'package:baseapp/shared/interceptor/dio_connectivity_request_retrier.dart';
import 'package:baseapp/shared/interceptor/retry_interceptor.dart';

class HttpService {
  HttpService(
    this._dio,
    this._connectivity,
  ) {
    _dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          _connectivity,
          _dio,
        ),
      ),
    );
  }

  final Connectivity _connectivity;
  final Dio _dio;

  Future<Response> httpServiceGet({
    @required String endpoint,
    Map<String, String> headers,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        endpoint,
        options: headers != null
            ? Options(
                headers: headers,
              )
            : null,
      );
    } on DioError catch (e) {
      if (e.response != null) {
        _exceptionHandler(e.response);
      } else {
        print(e.request);
        print(e.message);
      }
    }
    return response;
  }

  Future<Response> httpServicePost({
    @required String endpoint,
    @required Map<String, String> headers,
    Map<String, dynamic> body,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        endpoint,
        options: Options(
          headers: headers,
        ),
        data: jsonEncode(body),
      );
    } on DioError catch (e) {
      if (e.response != null) {
        _exceptionHandler(e.response);
      } else {
        print(e.request);
        print(e.message);
      }
    }
    return response;
  }

  void _exceptionHandler(Response response) {
    ExceptionInfo exceptionInfo = ExceptionInfo(
      message: response.data["error"]["message"]?.toString(),
      details: response.data["error"]["details"]?.toString(),
      statusCode: response.statusCode,
    );
    switch (response.statusCode) {
      case 400:
        throw BadRequestException(
          exceptionInfo: exceptionInfo,
        );
      case 401:
      case 403:
        throw UnauthorisedException(
          exceptionInfo: exceptionInfo,
        );
      case 500:
      default:
        throw FetchDataException(
          exceptionInfo: exceptionInfo,
        );
    }
  }
}
