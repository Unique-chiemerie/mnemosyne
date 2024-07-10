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
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.3,
          ),
          //the icon
          Center(
            child: SizedBox(
              height: screenHeight * 0.2,
              width: screenWidth * 0.5,
              child: Image.asset('images/main_logo.png'),
            ),
          ),
          //Text goes here
          Text(
            'Mnemosyne',
            style: TextStyle(
              fontSize: screenWidth * 0.1,
            ),
          )
        ],
      ),
    );
  }
}
