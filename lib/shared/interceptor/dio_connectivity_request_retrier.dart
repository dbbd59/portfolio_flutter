import 'dart:async';

import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';

import '../injection_container.dart';

class DioConnectivityRequestRetrier {
  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription streamSubscription;
    final Completer<Response> responseCompleter = Completer<Response>();
    streamSubscription = getIt<Connectivity>()
        .onConnectivityChanged
        .listen((connectivityResult) {
      if (connectivityResult != ConnectivityResult.none) {
        streamSubscription.cancel();
        responseCompleter.complete(
          getIt<Dio>().request(
            requestOptions.path,
            cancelToken: requestOptions.cancelToken,
            data: requestOptions.data,
            onReceiveProgress: requestOptions.onReceiveProgress,
            onSendProgress: requestOptions.onSendProgress,
            queryParameters: requestOptions.queryParameters,
            options: requestOptions,
          ),
        );
      }
    });

    return responseCompleter.future;
  }
}
