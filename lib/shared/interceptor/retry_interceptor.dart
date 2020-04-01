import 'dart:io';

import 'package:baseapp/shared/interceptor/dio_connectivity_request_retrier.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  RetryOnConnectionChangeInterceptor({@required this.requestRetrier});

  final DioConnectivityRequestRetrier requestRetrier;

  @override
  Future onError(DioError err) async {
    if (_shouldRetry(err)) {
      try {
        return requestRetrier.scheduleRequestRetry(err.request);
      } catch (e) {
        return e;
      }
    }
    return err;
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.DEFAULT ??
        err.error != null && err.error is SocketException;
  }
}
