// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DioConnectivityRequestRetrier {
  DioConnectivityRequestRetrier(
    this._connectivity,
    this._dio,
  );

  Connectivity _connectivity;
  Dio _dio;

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription streamSubscription;
    final Completer<Response> responseCompleter = Completer<Response>();
    streamSubscription =
        _connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult != ConnectivityResult.none) {
        streamSubscription.cancel();
        responseCompleter.complete(
          _dio.request(
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
