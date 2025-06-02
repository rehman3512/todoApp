import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/View/AuthView/signInView/signInView.dart';
import 'package:todoapp/View/AuthView/signUpView/signUpView.dart';
import 'package:todoapp/View/HomeView/homeView.dart';
import 'package:todoapp/View/HomeView/taskView/taskView.dart';
import 'package:todoapp/View/StartView/splashView/splashView.dart';
import 'firebase_options.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home: TaskView()
    );
  }
}
