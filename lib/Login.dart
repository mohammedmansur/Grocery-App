import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 380,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Lottie.asset(
                'assets/Lottie/thinkoffood.json',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    focusColor: Colors.grey,
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    hintText: 'enter user name',
                    labelText: 'name',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      focusColor: Colors.grey,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      // helperText: "8 charector with symbol",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90))),
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Forget Your Password?'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 184, 249, 137),
                        Color.fromARGB(255, 55, 219, 69)
                      ])),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text("login"),
                    icon: Icon(Icons.login),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(Colors.transparent.alpha),
                        fixedSize: Size(500, 50),
                        shape: StadiumBorder()),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account? '),
                    TextButton(
                      onPressed: () {},
                      child: Text('Signup'),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
