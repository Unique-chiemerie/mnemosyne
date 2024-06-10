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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blueAccent,
            ),
          ),
        ),
        body: Center(
          child: Text(
            'favourites screen',
            style: TextStyle(fontSize: screenWidth * 0.1),
          ),
        ));
  }
}
