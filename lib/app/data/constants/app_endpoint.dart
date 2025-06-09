import 'package:get/get_utils/get_utils.dart';

class Endpoint {
  static String BASE = GetPlatform.isWeb
      ? 'https://api.codetabs.com/v1/proxy?quest='
      : '';
  static String BASE_URL = '${BASE}https://api.komiku.org';
  static const String LIST_KOMIK = '/manga/';
}
