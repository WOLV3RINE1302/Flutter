import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 69;
    String name = "Sachin";
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30.5; //num takes both integer and double
    // var day = "Thursday"; //takes ANY variable
    // var a = 10;
    // const pie = 3.14; //Cannot be changed
    // final int b = 16; //Can be changed if it is a list
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First App"),
      ), //Gives the app the blue bar on top
      body: Center(
        // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text("Welcome to $days of flutter by $name"),
          )
      ),
      drawer: const Drawer(),
    );
  }
}
