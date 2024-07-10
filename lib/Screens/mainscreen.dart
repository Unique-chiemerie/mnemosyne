import 'package:flutter/material.dart';
import 'package:mnemosyne/Screens/sidebarscreen.dart';
import 'package:lottie/lottie.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Sidebarscreen(),
              ),
            );
          },
          icon: Image.asset('images/more_logo.png'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //the placeholder for the quotes card
          Center(
            child: Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.1,
          ),
          //the place holder for the random animated character
          SizedBox(
            height: screenHeight * 0.4,
            width: screenWidth * 0.9,
            child: Lottie.asset('assets\thinking_man.json'),
          ),
        ],
      ),
    );
  }
}
