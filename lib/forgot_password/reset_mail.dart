import 'package:flutter/material.dart';

import '../auth/sign_in.dart';

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
                      const SignIn()));


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
                      ElevatedButton( style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.red[900]),
                        foregroundColor:
                        MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(
                                horizontal:
                                MediaQuery.of(context).size.width *
                                    0.1)),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50)),
                            )),
                      ),
                        child: const Text(
                          'RESET',
                        ),
                        onPressed: () {
                          print('Completed');
                        },)
                    ],

                  ))
            ],
          ),
        ));
  }
}