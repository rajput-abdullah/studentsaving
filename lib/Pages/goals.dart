import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class Goals extends StatefulWidget {
  const Goals({Key key}) : super(key: key);

  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  var height;
  var width;
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/smallIcon.png'),
          iconSize: 25,
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: ConstantColor.DARK_BLUE),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      endDrawer: const DrawerScreen(),
      body: Container(
        height: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .02,
              ),
              const Text(
                "GOALS",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: height * .02,
              ),
              const Text(
                "Set financial goals for yourself, and track your progress.",
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              SizedBox(
                height: height * .02,
              ),
              const Text(
                "ADD OR UPDATE GOALS",
                style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),
              ),
              SizedBox(
                height: height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW, "assets/goals/addGoal.png",
                      "ADD GOAL"),
                  roundedBox(
                      ConstantColor.GREY,
                      "assets/goals/trackGoalProgress.png",
                      "TRACK GOAL PROGRESS"),
                ],
              ),
              SizedBox(
                height: height * .04,
              ),
              const Text(
                "MY GOALS",
                style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: height * 0.38,
                decoration: const BoxDecoration(
                  color: ConstantColor.LIGHT_BLUE,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * .01),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          staticText("OCTOBER 1,2021"),
                          staticText("MAY 41,2022"),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 5, right: 20, left: 20),
                      padding: const EdgeInsets.all(1),
                      height: height * 0.029,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: ConstantColor.PINK,
                          )),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: LinearProgressIndicator(
                            value: 0.5,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                ConstantColor.PINK),
                            backgroundColor: Colors.white,
                            minHeight: 15),
                      ),
                    ),
                    SizedBox(height: height * .02),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          staticText("GOAL TITLE"),
                          dynamicText("Pay off my credit card"),
                        ],
                      ),
                    ),
                    SizedBox(height: height * .02),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          staticText("ACTION PLAN"),
                          dynamicText("Additional monthly payments of \$50"),
                        ],
                      ),
                    ),
                    SizedBox(height: height * .02),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          staticText("AMOUNT NEEDED TO COMPLETE GOAL"),
                          dynamicText("\$758.48"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.only(top: 10, bottom: 10),
      //   decoration: const BoxDecoration(
      //     color: ConstantColor.DARK_BLUE,
      //   ),
      //   child: BottomNavigationBar(
      //     elevation: 0,
      //     backgroundColor: ConstantColor.DARK_BLUE,
      //     type: BottomNavigationBarType.fixed,
      //     selectedItemColor: ConstantColor.YELLOW,
      //     selectedLabelStyle: const TextStyle(fontSize: 10),
      //     unselectedFontSize: 10,
      //     unselectedItemColor: ConstantColor.WHITE,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             AssetImage("assets/images/budgetWhite.png"),
      //           ),
      //           label: 'BUDGET'),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/resourcesWhite.png"),
      //         ),
      //         label: 'RESOURCES',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/goalsWhite.png"),
      //         ),
      //         label: 'GOALS',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/addTransaction.png"),
      //         ),
      //         label: 'ADD TRANSACTION',
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     onTap: (index) {
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //   ),
      // ),
    );
  }

  Widget roundedBox(Color dynamicColor, String imgPath, String tabName) {
    return Container(
      height: height * 0.17,
      width: width * 0.4,
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset(imgPath)],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .017,
          ),
          Expanded(
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  tabName,
                  style: const TextStyle(
                      color: ConstantColor.DARK_BLUE,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }

  Widget staticText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 11,
          color: ConstantColor.DARK_BLUE,
          fontWeight: FontWeight.bold),
    );
  }

  Widget dynamicText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 15, color: ConstantColor.WHITE),
    );
  }
}
