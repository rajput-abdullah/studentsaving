import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                          margin: const EdgeInsets.only(top: 120),
                          height: MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.45,
                          decoration: const BoxDecoration(

                              color:  ConstantColor.LIGHT_BLUE, //new Color.fromRGBO(255, 0, 0, 0.0),
                              borderRadius:  BorderRadius.only(
                                  bottomRight:  Radius.circular(50.0),
                                  topRight: Radius.circular(50.0))
                          ),

                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),

                          height: MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.36,
                          decoration: const BoxDecoration(
                              color:  ConstantColor.BLUE, //new Color.fromRGBO(255, 0, 0, 0.0),
                              borderRadius:  BorderRadius.only(
                                  bottomRight:  Radius.circular(50.0),
                                  topRight: Radius.circular(50.0))
                          ),

                        ),
                      ],
                    )
                  ],),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("assets/logo.png"),
                          const Text(
                            "BUILD A BUDGET AND TRACK YOUR SAVING"
                            ,
                            style: TextStyle(color: ConstantColor.WHITE),
                          )
                        ],
                      ),
                    ),
                    Expanded(

                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            height: MediaQuery.of(context).size.height*0.15,
                            width: MediaQuery.of(context).size.width*0.25,
                            decoration: const BoxDecoration(

                                color:  ConstantColor.LIGHT_YELLOW, //new Color.fromRGBO(255, 0, 0, 0.0),
                                borderRadius:  BorderRadius.only(
                                    bottomLeft:  Radius.circular(50.0),
                                    topLeft: Radius.circular(50.0))
                            ),

                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom:180, ),
                            height: MediaQuery.of(context).size.height*0.15,
                            width: MediaQuery.of(context).size.width*0.10,
                            decoration: const BoxDecoration(
                                color:  ConstantColor.YELLOW, //new Color.fromRGBO(255, 0, 0, 0.0),
                                borderRadius:  BorderRadius.only(
                                    bottomLeft:  Radius.circular(50.0),
                                    topLeft: Radius.circular(50.0))
                            ),

                          ),
                        ],
                      ),
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
