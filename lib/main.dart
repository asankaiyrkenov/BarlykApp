import 'package:flutter/material.dart';
import 'package:flutter_everything/inner_pages/main_inner_page.dart';
import 'package:flutter_everything/pages/everything.dart';
import 'package:flutter_everything/pages/scaffold_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldPage(),
    );
  }
}
