import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/Pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));
  }

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.4,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: const BoxDecoration(

                          color:  ConstantColor.BLUE, //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius:  BorderRadius.only(
                              bottomRight:  Radius.circular(40.0),
                              topRight: Radius.circular(40.0))
                      ),

                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*0.3,
                      decoration: const BoxDecoration(
                          color:  ConstantColor.LIGHT_BLUE, //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius:  BorderRadius.only(
                              bottomRight:  Radius.circular(40.0),
                              topRight: Radius.circular(40.0))
                      ),

                    ),
                  ],
                )
              ],),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  children: [
                    Image.asset("assets/logo.png"),
                    const Text(
                      "BUILD A BUDGET AND TRACK YOUR SAVING"
                          ,
                      style: TextStyle(color: ConstantColor.WHITE),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color:  ConstantColor.YELLOW, //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius:  BorderRadius.only(
                              bottomRight:  Radius.circular(40.0),
                              topRight: Radius.circular(40.0))
                      ),

                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color:  ConstantColor.LIGHT_YELLOW, //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius:  BorderRadius.only(
                              bottomRight:  Radius.circular(40.0),
                              topRight: Radius.circular(40.0))
                      ),

                    ),
                  ],
                )

              ],),
            ),
            Expanded(
              child: Row(children: [

              ],),
            ),
          ],
        )
      ),
    );
  }
}