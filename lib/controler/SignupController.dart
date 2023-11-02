import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();
  final  rewritePasswordController = TextEditingController();

  void registerUser(String email,String password)
  {

  }
}