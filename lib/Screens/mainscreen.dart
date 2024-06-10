import 'package:flutter/material.dart';
import 'package:mnemosyne/Screens/sidebarscreen.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Sidebarscreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
            style: IconButton.styleFrom(
              iconSize: screenWidth * 0.07,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //the placeholder for the quotes card
          Container(
            height: screenHeight * 0.1,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.1,
          ),
          //the place holder for the random animated character
          SizedBox(
            height: screenHeight * 0.4,
            width: screenWidth * 0.9,
            child: const Placeholder(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
