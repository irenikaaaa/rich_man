import 'package:flutter/material.dart';
import 'package:rich_man/gradient_background.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GradientBackground(
        colors: [
          Color.fromARGB(193, 34, 0, 255),
          Color.fromARGB(255, 234, 0, 255)
        ],
      ),
    ),
  );
}
