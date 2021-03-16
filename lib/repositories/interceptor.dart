import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class InterceptorDio {
  Future<Dio> base() async {
    Dio _dio = Dio();

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    _dio.options.connectTimeout = 300000;
  }
}
