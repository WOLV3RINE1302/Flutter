import 'package:flutter/material.dart';
import 'package:flutter_catalg/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { //_ in LoginPageState denotes privates
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context)async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Form(
          key: _formKey,
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
                          validator: (value) {
                            if(value==null || value.isEmpty){
                            return "Username cannot be empty";
                            }
                            return null;
                          },
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
                      validator:(value) {
                        if(value==null || value.isEmpty){
                          return "Password cannot be empty";
                        }
                        else if(value.length < 6) {
                          return "Password should be at least 6 characters";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  Material(
                    color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(changeButton?50: 8),
                    child: InkWell(
                      splashColor: Colors.deepPurpleAccent,
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.center,
                        child:changeButton? const Icon(Icons.done): const Text("Login",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                        ),
                        width: changeButton?40 : 150,
                        height: 40,
                        // shape: changeButton?BoxShape.circle : BoxShape.rectangle,
                        // color: Colors.lightBlue, Cannot use this color due to decoration
                               ),
                    ),
                  )

                  //   ElevatedButton(onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //     child: const Text("Login"),
                  //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),),

                  ])),
            ],
          ),
        ));
  }
}
