import 'package:flutter/material.dart';
import 'package:rich_man/image_roller.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "I am RICH man!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 215, 55, 230),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: const Center(
            child: ImageRoller(),
          ),
        ));
  }
}
