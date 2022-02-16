import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginbg.png",
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username or Email",
                        labelText: "Username or Email"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () { print("Haha"); },
                  child: const Text("Login"),
                  style: TextButton.styleFrom(),),
                ])),
          ],
        ));
  }
}
