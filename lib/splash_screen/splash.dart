import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../auth/sign_in.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SignIn()),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red.shade800, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _opacityAnimation,
              ),
              const Text(
                'Get Together',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}