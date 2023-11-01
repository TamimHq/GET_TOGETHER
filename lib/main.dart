import 'package:flutter/material.dart';
import 'package:get_together/splash_screen/splash.dart';
import 'package:get/get.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(

      home: Splash(),
    );
  }
}

