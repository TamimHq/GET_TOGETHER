import 'package:flutter/material.dart';
import 'package:get_together/forgot_password/reset_password.dart';

import 'otp_sender.dart';


class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                      const ForgotPasswordScreen()
                  )
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text('Enter Your Email To Reset',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black87),),
              const SizedBox(height: 30,),
              Form(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Email',
                              prefixIcon: const Icon(
                                Icons.email,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                const BorderSide(color: Colors.black),
                              )),
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(width: double.infinity,
                          child: ElevatedButton( style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red[900]),
                            foregroundColor:
                            MaterialStateProperty.all(Colors.white),

                          ),
                            child: const Text(
                              'RESET',
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const OtpSend(),
                                  )
                              );
                            },),
                        )
                      ],

                    ),
                  ))
            ],
          ),
        ));
  }
}