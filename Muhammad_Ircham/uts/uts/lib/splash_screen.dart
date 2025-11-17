import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
 const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo_album, size: 80, color: Colors.white,),
            SizedBox(height: 20),
            Text('UTS Mobile Programming', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}