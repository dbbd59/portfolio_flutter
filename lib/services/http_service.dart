import 'dart:convert';

import 'package:baseapp/shared/exceptions.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:baseapp/shared/interceptor/dio_connectivity_request_retrier.dart';
import 'package:baseapp/shared/interceptor/retry_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpService {
  HttpService() {
    getIt<Dio>().interceptors.add(
          RetryOnConnectionChangeInterceptor(
            requestRetrier: DioConnectivityRequestRetrier(),
          ),
        );
  }

  Future<Response> httpServiceGet({
    @required String endpoint,
    Map<String, String> headers,
  }) async {
    Response response;
    try {
      response = await getIt<Dio>().get(
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
      response = await getIt<Dio>().post(
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
