import 'dart:developer';

import 'package:get/get.dart';

import '../constants/app_endpoint.dart';

class ApiService extends GetConnect {
  final headers = {
    'accept': '*/*',
    'origin': 'https://komiku.org',
    'user-agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
  };

  @override
  void onInit() {
    httpClient.timeout = 10.seconds;
    httpClient.baseUrl = Endpoint.BASE_URL;
    httpClient.userAgent = headers['user-agent'] ?? '';

    httpClient.addRequestModifier<dynamic>((request) {
      request.headers.assignAll(headers);
      return request;
    });

    httpClient.addResponseModifier((request, response) {
      log('${response.request?.url ?? '--'}', name: '${response.statusCode}');
      return response;
    });

    httpClient.errorSafety = false;
  }
}
