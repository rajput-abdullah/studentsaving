import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                flex: 1,
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
                      "CREATE AN ACCOUNT",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children:  [
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
                            hintStyle: const TextStyle(color: ConstantColor.WHITE, fontSize: 13)
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
                            hintText: "RETYPE PASSWORD*",
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
                            hintText: "FIRST NAME*",
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
                            hintText: "LAST NAME*",
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
                            suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: ConstantColor.WHITE, size: 30,),
                            hintText: "NSCC CAMPUS*",
                            hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: MaterialButton(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          onPressed: (){},
                          color: ConstantColor.YELLOW,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text("SUBMIT"),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: TextButton(
                          onPressed: (){},
                          child: const Text("BY SUBMITTING THE FOLLOWING INFORMATION YOU AGREE TO THE TERMS AND CONDITIONS AND OUR PRIVACY POLICY.", style: TextStyle(    decoration: TextDecoration.underline,
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
