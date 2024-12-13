import 'package:flutter/material.dart';
import 'package:dp00/Screens/home.dart';
import 'package:dp00/Screens/statistics.dart';
import 'package:dp00/widgets/bottomnavigationbar.dart';
import 'package:hive/hive.dart';

import '../ data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

extension on HiveInterface {
  initFlutter() {}
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}