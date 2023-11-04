import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get_together/auth/sign_in.dart';
import 'package:get_together/auth/user_model.dart';
import 'package:get_together/controler/SignupController.dart';
import 'package:get/get.dart';
import 'package:get_together/dashboard/dashboard.dart';
class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();

}
class _SignUpState extends State<SignUp> {
  final controller =Get.put(SignUpController());
  final _formKey= GlobalKey<FormState>(); 


  bool isPasswordHidden = true;
  bool isRewritePasswordHidden = true;

  // Function to check if the passwords match
  bool doPasswordsMatch() {
    return controller.passwordController.text == controller.rewritePasswordController.text;
  }

  @override
  Widget build(BuildContext context)=>
      Builder(
          builder: (context) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/SIGN UP.png'),fit: BoxFit.cover
                ),
              ),
              child:  Scaffold(
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.40) ,

                          child: Text('Sign Up',style: TextStyle(color: Colors.red[900],fontSize: 28,fontFamily: 'Montserrat',fontWeight: FontWeight.w700 ),),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
                            child: Container(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  TextField(
                                    controller: controller.emailController,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'Email',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius : BorderRadius.circular(10),
                                          borderSide: const BorderSide(color: Colors.black),
                                        )
                                    ),
                                  ),
                                  const SizedBox(height: 10,),

                                  TextField(
                                    controller: controller.passwordController,
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
                                          borderRadius : BorderRadius.circular(10),
                                          borderSide: const BorderSide(color: Colors.black),

                                        )
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  TextField(
                                    controller: controller.rewritePasswordController,
                                    obscureText: isRewritePasswordHidden,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'Rewrite Password',
                                        prefixIcon: const Icon(
                                          Icons.key,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: _visiblePasswords,
                                          child: const Icon(
                                            Icons.visibility,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius : BorderRadius.circular(10),
                                          borderSide: const BorderSide(color: Colors.black),

                                        )
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  if (!doPasswordsMatch())
                                    const Text(
                                      "Passwords do not match",
                                      style: TextStyle(color: Colors.red),
                                    ),


                                  const SizedBox(
                                    height: 10,
                                  ),


                                      SizedBox(width:double.infinity,
                                        child: ElevatedButton(

                                          style:ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.red[900]),
                                            foregroundColor: MaterialStateProperty.all(Colors.white),
                                            padding: MaterialStateProperty.all( EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1)),

                                          ),
                                          child: const Text('SIGNUP',),

                                          onPressed:()
                                          {
                                            if (doPasswordsMatch()) {
                                              // Passwords match and are strong, proceed with sign-up
                                              final user = UserModel(
                                                email: controller.emailController.text.trim(),
                                                password: controller.passwordController.text.trim(),
                                              );
                                              SignUpController.instance.createUser(user);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                  builder: (context) =>
                                              const Dashboard(),
                                            ));



                                            } else {
                                              // Passwords do not match or are weak, display an error message or handle accordingly
                                              print('Sign Up failed');
                                            }

                                          },
                                        ),
                                      ),


                                  const SizedBox(
                                    height: 15,
                                  ),


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Alreay have an account?',style:TextStyle(fontSize: 10) ,),
                                      const SizedBox(
                                        width: 10,
                                      ),

                                      InkWell(
                                          onTap: (){
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (context)=>const SignIn()));
                                          },
                                          child: Text('sign in',style: TextStyle(fontSize: 10,color: Colors.blueAccent[200]),)),
                                    ],
                                  ),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0)),
                                  Row(
                                    children: [
                                      Expanded(child: Divider(
                                        thickness: 1.0,
                                        color: Colors.grey[600],
                                      )),
                                      const Text('or Sign up with'),
                                      Expanded(child: Divider(
                                        thickness: 1.0,
                                        color: Colors.grey[600],
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
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


                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('By siging up you agree with our',style: TextStyle(fontSize: 10),),
                                      InkWell(
                                          onTap: (){
                                            print('a') ;
                                          },
                                          child: Text('T&C',style: TextStyle(fontSize: 10,color: Colors.blueAccent[200]),)),
                                      const Text('and',style: TextStyle(fontSize: 10),),
                                      InkWell(
                                          onTap: (){
                                            print('dont');
                                          },
                                          child: Text('privacy and policy',style: TextStyle(fontSize: 10,color: Colors.blueAccent[200]),)),


                                    ],

                                  )
                                ],
                              ),
                            ),
                          ),

                        )

                      ],
                    ),
                  ),
                ),
              ),
            );
          }
      );
  void _visiblePassword(){
    setState(() {
      isPasswordHidden = ! isPasswordHidden;
    });
  }
  void _visiblePasswords(){
    setState(() {
      isRewritePasswordHidden = ! isRewritePasswordHidden;

    });
  }

}