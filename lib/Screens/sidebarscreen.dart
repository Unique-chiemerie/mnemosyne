import 'package:flutter/material.dart';

class Sidebarscreen extends StatefulWidget {
  const Sidebarscreen({super.key});

  @override
  State<Sidebarscreen> createState() => _SidebarscreenState();
}

class _SidebarscreenState extends State<Sidebarscreen> {
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Text(
        'Side bar screen',
        style: TextStyle(fontSize: screenWidth * 0.1),
      ),
    ));
  }
}
