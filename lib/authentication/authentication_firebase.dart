import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../auth/sign_up.dart';

class Authentication extends GetxController{
  static Authentication get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?> (_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
    
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(()=>const SignUp()):Get.offAll(()=> const Dashboard());
  }
}
