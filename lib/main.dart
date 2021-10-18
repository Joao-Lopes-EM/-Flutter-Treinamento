import 'package:flutter/material.dart';
import 'my_app.dart';
import 'injector.dart' as inj;

Future<void> main() async {
  await inj.init();
  runApp(MyApp());
}
