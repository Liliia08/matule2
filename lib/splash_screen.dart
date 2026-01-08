import 'package:flutter/material.dart';
import 'package:matule/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/SplashScreen.png",
              fit: BoxFit.cover,),
            Center(
              child: Text(
                'Matule',
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'SF Pro Display'
                ),
              ),
            ),
          ]
      ),
    );
  }
}

