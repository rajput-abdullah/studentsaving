import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';

import 'home_screen.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          color: ConstantColor.WHITE,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/logo.png"),
                            ],
                          ),
                        ),

                      ],),
                    const Text(
                      "BUILD A BUDGET AND TRACK YOUR SAVING"
                      ,
                      style: TextStyle(color: Colors.black),
                    )

                  ],
                ),
              ),
              Expanded(

                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children:  [
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("SIGN IN")),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(40.0),
                            ),focusedBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(40.0),
                        ),
                            fillColor: ConstantColor.DARK_BLUE,
                            filled: true,
                            hintText: "USERNAME*",
                            hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(40.0),
                            ),focusedBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(40.0),
                        ),
                            fillColor: ConstantColor.DARK_BLUE,
                            filled: true,
                            hintText: "PASSWORD*",
                            hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: MaterialButton(
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                          onPressed: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          color: ConstantColor.YELLOW,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text("LOGIN"),
                        ),
                      ),
                      const SizedBox(height: 20),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: (){},
                          child: const Text("CREATE AN ACCOUNT", style: TextStyle(    decoration: TextDecoration.underline,
                              color: Colors.black, fontSize: 11),),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
