import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

import '../../../application/configs/env_configs.dart';
import 'api_client.dart';
import 'api_interceptors.dart';

class ApiClientProvider {
  static ApiClient? apiClient;

  static Future<void> init({bool forceInit = false}) async {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);
    dio.interceptors.addAll([
      ApiInterceptors(),
    ]);
    // Enable proxy detection if applicable
    debugPrint('#CharlesProxyEnabled');
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client =
            HttpClient(context: SecurityContext(withTrustedRoots: false));
        client.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);

        return client;
      },
    );
    // End
    apiClient = ApiClient(dio, baseUrl: EnvConfigs.apiBaseUrl);
  }
}
