import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class IHttpService {
  Connectivity connectivity;
  Dio dio;

  Future<Response> httpServiceGet({
    @required String endpoint,
    Map<String, String> headers,
  });

  Future<Response> httpServicePost({
    @required String endpoint,
    @required Map<String, String> headers,
    Map<String, dynamic> body,
  });
}
