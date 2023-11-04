import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_together/auth/user_model.dart';
import 'package:get_together/authentication/authentication_firebase.dart';
import 'package:get_together/authentication/user.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();
  final  rewritePasswordController = TextEditingController();

  final userRepo =Get.put(UserUse());

  Future <void> createUser(UserModel user) async
  {
    await userRepo.createUser(user);

  }
}