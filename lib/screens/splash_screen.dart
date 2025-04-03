import 'package:flutter/material.dart';
import 'dart:async';

import 'calculator_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const CalculatorScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('asset/logo.png'),width: 100, ), // Add your logo
            const SizedBox(height: 20),
            const Text(
              'Scientific Calculator',
              style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
