import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
            child: Text(
      "Login Page",
      style: TextStyle(
          // fontSize: 30, We generally do not specify it(diff device problem)
          color: Colors.blue,
          fontWeight: FontWeight.bold),
    )
        )
    );
  }
}
