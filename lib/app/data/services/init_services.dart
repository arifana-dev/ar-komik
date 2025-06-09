import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'api_service.dart';

Future<void> initServices() async {
  try {
    Get.putAsync(() async => ApiService());
    await GetStorage.init();
  } catch (e) {
    log('$e', name: 'Failed to initialize services');
  }
}
