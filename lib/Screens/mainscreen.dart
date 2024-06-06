import 'package:flutter/material.dart';
import 'package:mnemosyne/Screens/sidebarscreen.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
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
            icon: const Icon(Icons.more_horiz_outlined),
            style: IconButton.styleFrom(iconSize: screenWidth * 0.07),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Home screen',
              style: TextStyle(fontSize: screenWidth * 0.2),
            ),
          )
        ],
      ),
    );
  }
}
