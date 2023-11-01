import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_together/forgot_password/reset_mail.dart';
class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      context: context,
      builder: (context) => Container(
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
            GestureDetector(
              onTap: ()
              {
                Navigator.pop(context);
                Get.to(()=>  const ForgetPasswordMailScreen());
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
            GestureDetector(
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