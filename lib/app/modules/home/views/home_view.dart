import 'package:ar_komik/app/modules/shared/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: Text('Home')),
      body: Center(child: Text('HomeView')),
    );
  }
}
