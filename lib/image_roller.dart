import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rich_man/person_characteristics.dart';

final randomizer = Random();

class ImageRoller extends StatefulWidget {
  const ImageRoller({super.key});
  @override
  State<ImageRoller> createState() {
    return _ImageRollerState();
  }
}

class _ImageRollerState extends State<ImageRoller> {
  var currentImage = 1;
  void rollImage() {
    setState(() {
      currentImage = randomizer.nextInt(9) + 1;
    });
  }

  var petro = Person(nickname: 'Petya', money: 1000, age: 23);
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/img$currentImage.png',
          width: 350,
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: rollImage,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(217, 254, 253, 255),
              foregroundColor: Colors.black87,
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: Text('Life of ${petro.nickname}'),
        )
      ],
    );
  }
}
