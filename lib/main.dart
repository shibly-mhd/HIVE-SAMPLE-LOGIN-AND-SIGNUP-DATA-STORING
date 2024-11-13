import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivesample/login.dart';
import 'package:hivesample/model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(idAdapter());
  await Hive.openBox<id>('db');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //
    //
    //
    //
    return MaterialApp(
      home: Login(),
    );
    //
    //
    //
    //
  }
}
