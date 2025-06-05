import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/View/HomeView/taskView/taskView.dart';
import 'package:todoapp/View/StartView/splashView/splashView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView()
    );
  }
}
