import 'package:flutter/material.dart';
import 'package:get_together/forgot_password/reset_mail.dart';

import '../auth/sign_in.dart';

class ForgotPasswordScreen extends StatelessWidget{
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Reset password'),
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const SignIn()
                )
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
    body: Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          const Text(
            'Make a selection !',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          const Text(
            'Select on of any method given below',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat'),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: ()
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const ForgetPasswordMailScreen(),
                  )
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.mail_outline_rounded,
                    size: 60,
                  ),
                  SizedBox(width: 10,),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('E-Mail',style: TextStyle(color: Colors.black,fontSize: 25,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
                        Text('Reset via E-Mail verification',style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: 'Montserrat'),),
                      ])
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: ()
            {

            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.mobile_friendly_rounded,
                    size: 60,
                  ),
                  SizedBox(width: 10,),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phone No',style: TextStyle(color: Colors.black,fontSize: 25,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
                        Text('Reset via Phone verification',style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: 'Montserrat'),),
                      ])
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }


}