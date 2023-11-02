import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class OtpSend extends StatelessWidget {
  const OtpSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'CODE',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const Text(
                'Verification',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Enter Your Verification Code',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
              const SizedBox(
                height: 10,
              ),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){
                  print('Otp is => $code');
                },
              ),



              const SizedBox(height: 10,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('SEND'))),
            ],
          ),
        ),

    );
  }
}
