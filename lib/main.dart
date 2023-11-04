import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_together/dashboard/dashboard.dart';
import 'package:get_together/firebase_options.dart';
import 'package:get_together/profile/profilescreen.dart';
import 'package:get_together/splash_screen/splash.dart';

import 'authentication/authentication_firebase.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value)=>Get.put(Authentication()));
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(

      home: Splash(),
    );
  }
}

