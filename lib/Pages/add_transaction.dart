import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key key}) : super(key: key);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  int _selectedIndex = 3;

  var height;
  var width;


  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
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
        body:
      Container(
        width: width,
        margin: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
          color: ConstantColor.GREY,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(70),topRight:Radius.circular(70))
          ,boxShadow: [
          BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 12.5,
        ),
        ],

      ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                SizedBox(
                  width: width*.7,
                  height: height*0.11,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Container(
                        width: width*0.4,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey    ,
                              blurRadius: 20,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorHeight: 30,
                          cursorColor: Colors.black,
                          keyboardAppearance: Brightness.light, // no matter what you set, it simply shows white keyboard

                          style: const TextStyle(fontSize: 20, height: 1.2),
                            keyboardType: TextInputType.number,
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              // contentPadding: const EdgeInsets.only(right: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius:  BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius:  BorderRadius.circular(20.0),
                              ),
                              fillColor: ConstantColor.WHITE,
                              filled: true,
                              prefixIcon: const Icon(Icons.attach_money_outlined, color: Colors.black, size: 25,),
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              margin: const EdgeInsets.only(right: 30, top: 18,),
                              child: const Icon(Icons.close, color: ConstantColor.DARK_BLUE, size: 40,))),

                    ],
                  ),
                ),
              ],
            ),
            categoryDateBudget(ConstantColor.PINK,"assets/addTransaction/category.png" , "CATEGORY*"),
            categoryDateBudget(ConstantColor.PINK,"assets/addTransaction/calendar.png" , "DATE*"),
            categoryDateBudget(ConstantColor.PINK,"assets/addTransaction/notes.png" , "NOTE*"),
            save(ConstantColor.YELLOW,"SAVE")
          ],
        ),

      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.only(top: 10, bottom: 10),
      //   decoration: const BoxDecoration(
      //     color: ConstantColor.DARK_BLUE,
      //   ),
      //   child:
      //   BottomNavigationBar(
      //
      //     elevation: 0,
      //     backgroundColor: ConstantColor.DARK_BLUE,
      //     type: BottomNavigationBarType.fixed,
      //     selectedItemColor: ConstantColor.YELLOW,
      //     selectedLabelStyle: const TextStyle(fontSize: 10),
      //     unselectedFontSize: 10,
      //     unselectedItemColor: ConstantColor.WHITE,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(AssetImage("assets/images/budgetWhite.png"),
      //           ),
      //           label: 'BUDGET'
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/resourcesWhite.png"),
      //         ),
      //         label: 'RESOURCES',
      //
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
      //
      //         ),
      //         label: 'ADD TRANSACTION',
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     onTap: (index){
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //
      //   ),
      // ),

    );

  }
  Widget categoryDateBudget(Color dynamicColor, String imgPath, String tabName)
  {
    return Container(
      height: height*0.09,
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20),

                  child: Image.asset(imgPath)),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child:  Center(child: Text(tabName,style: const TextStyle(color: ConstantColor.WHITE, fontSize: 14, fontWeight: FontWeight.bold),))
                ,
              ),

            ],
          ),
        ],
      ),
    );

  }
  Widget save(Color dynamicColor,String tabName)
  {
    return Container(
      height: height*0.05,
      margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 90),
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),

      ),
      child: Center(child: Text(tabName,style: const TextStyle(color:Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)),

    );

  }
}
