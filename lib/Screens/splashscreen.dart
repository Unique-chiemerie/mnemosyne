import 'package:flutter/material.dart';
import 'package:mnemosyne/Screens/mainscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  nextscreen() {
    Future.delayed(
      const Duration(seconds: 10),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Mainscreen(),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    nextscreen();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight * 0.3,
          width: screenWidth * 0.5,
          color: Colors.blueAccent.shade400,
          child: Text(
            'Logo goes in here',
            style: TextStyle(fontSize: screenWidth * 0.1),
          ),
        ),
      ),
    );
  }
}
