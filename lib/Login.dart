import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery/Profile.dart';
import 'package:grocery/src/default.dart';
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
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DefaultScreen(),
                        ));
                  },
                  icon: Icon(Icons.arrow_back)),
            ],
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: Lottie.asset(
              'assets/Lottie/sabata.json',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 10),
            child: Row(
              children: const [
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
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusColor: Colors.grey,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 30,
                    ),
                    hintText: 'enter user name',
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100))),
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
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      focusColor: Colors.grey,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.grey,
                      ),
                      // helperText: "8 charector with symbol",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                    )),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     TextButton(
                //       onPressed: () {},
                //       child: Text('Forget Your Password?'),
                //     )
                //   ],
                // ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Container(
                      height: 55.0,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 76, 175, 80)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.login,
                            color: Colors.white,
                            size: 24,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //   Text('Dont have an account? '),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forget Your Password?'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Signup'),
                    ),
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
