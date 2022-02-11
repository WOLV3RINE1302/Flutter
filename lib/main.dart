import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_catalg/pages/home.dart';
import 'package:flutter_catalg/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), removed as we have home in routes(23)
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, //This will override colors in Swatch
      ),
      initialRoute: "/", //Used to set initial route
      routes: {
        "/": (context) =>
            LoginPage(), //We are creating an object here but no need to use new
        "/home": (context) => HomePage(),
      },
    );
  }
}

// bringVegetables({required bool bag, int money = 100}) {} //{} - not compulsory
// // except when required it written
