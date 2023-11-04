import 'package:auth_buttons/auth_buttons.dart';
import'package:flutter/material.dart';
import 'package:get_together/auth/sign_up.dart';

import '../dashboard/dashboard.dart';
import '../forgot_password/reset_password.dart';

class SignIn extends StatefulWidget{
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('asset/SIGN IN.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4),
              child: Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 28,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.45),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
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
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: isPasswordHidden,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: const Icon(
                              Icons.key,
                            ),
                            suffixIcon: InkWell(
                              onTap: _visiblePassword,
                              child: const Icon(
                                Icons.visibility,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(color: Colors.black),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Forget Password',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.lightBlue[200]),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ForgotPasswordScreen(),
                                  )
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(width: double.infinity,
                        child: ElevatedButton( style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.red[900]),
                          foregroundColor:
                          MaterialStateProperty.all(Colors.white),

                        ),
                          child: const Text(
                            'Sign In',
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>
                            const Dashboard(),
                                ),);
                          },),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const SignUp()
                                    )
                                );
                              },
                              child: Text(
                                'sign up',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blueAccent[200]),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0)),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.grey[600],
                              )),
                          const Text('or Login with'),
                          Expanded(
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.grey[600],
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GoogleAuthButton(
                            onPressed: () {},
                            style: const AuthButtonStyle(
                              buttonType: AuthButtonType.icon,
                              iconType: AuthIconType.secondary,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FacebookAuthButton(
                            onPressed: () {},
                            style: const AuthButtonStyle(
                              buttonType: AuthButtonType.icon,
                              iconType: AuthIconType.secondary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  });



  void _visiblePassword() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }
}