import 'package:flutter/material.dart';
import 'package:flutter_catalg/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { //_ in LoginPageState denotes privates
  String name = "";
  bool changeButton = false;
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
            Text(
              "Welcome $name",
              style: const TextStyle(
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
                        onChanged: (value){
                        name = value;
                        setState(() {

                        });
                        },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                InkWell(
                  onTap: () async{
                    await Future.delayed(const Duration(seconds : 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changeButton = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.center,
                    child:changeButton? const Icon(Icons.done): const Text("Login",
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 19),
                    ),
                    width: changeButton?100 : 150,
                    height: 40,
                    // color: Colors.lightBlue, Cannot use this color due to decoration
                    decoration: BoxDecoration(color: Colors.lightBlue,
                    // shape: changeButton?BoxShape.circle : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton?50: 8)),
                           ),
                )

                //   ElevatedButton(onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //     child: const Text("Login"),
                //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),),

                ])),
          ],
        ));
  }
}
