import 'package:flutter/material.dart';
import 'package:mnemosyne/Screens/splashscreen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mnemosyne',
      home: Splashscreen(),
    ),
  );
}
