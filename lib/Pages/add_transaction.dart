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
          children: [
            Container(

              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width*0.3,
                    child: TextField(

                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: const BorderSide(color: Colors.white),

                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius:  BorderRadius.circular(18.0),
                          ),
                          focusedBorder: OutlineInputBorder(

                            borderSide: const BorderSide(color: Colors.white),

                        borderRadius:  BorderRadius.circular(18.0),
                      ),
                          fillColor: ConstantColor.WHITE,
                          filled: true,
                          prefixIcon: const Icon(Icons.attach_money_outlined, color: Colors.black, size: 18,),
                          hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                      ),
                    ),
                  ),
                  Icon(Icons.close, color: ConstantColor.DARK_BLUE,)
                ],
              ),
            )
          ],
        ),

      )
    );
  }
}
