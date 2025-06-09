import 'package:ar_komik/app.dart';
import 'package:ar_komik/app/data/services/init_services.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  runApp(const App());
}
