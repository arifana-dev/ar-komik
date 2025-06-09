import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AR Komik',
      navigatorKey: Get.key,
      enableLog: kDebugMode,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      onUnknownRoute: (settings) => GetPageRoute(page: () => AppPages.routes.firstWhere((e) => e.name == AppPages.INITIAL).page()),
    );
  }
}
