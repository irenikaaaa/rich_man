import 'package:flutter/material.dart';
import 'package:rich_man/person_characteristics.dart';

class Main_Page extends StatelessWidget {
  var petro = Person(nickname: "Petya", age: 23, money: 3423423);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "I am RICH man!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  image: AssetImage(
                'assets/diamond.png',
              )),
              Text(
                'Name: ${petro.nickname}',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Age : ${petro.age} ',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'My wealth : ${petro.money = 88} dollars',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
