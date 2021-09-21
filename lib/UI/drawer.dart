import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/Pages/add_transaction.dart';
import 'package:studentsaving/Pages/budget.dart';
import 'package:studentsaving/Pages/budget_list.dart';
import 'package:studentsaving/Pages/goals.dart';
import 'package:studentsaving/Pages/household_expense.dart';
import 'package:studentsaving/Pages/profile.dart';
import 'package:studentsaving/Pages/resources.dart';
import 'package:studentsaving/Pages/sign_up_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key key}) : super(key: key);



  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  var height;
  var width;



  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,

      child: Drawer(

        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: ListView(
            children: [
               Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.only( top: 20),
                    child: IconButton(
                        onPressed: () => {Navigator.pop(context)},
                        icon:Icon(Icons.close, size:50), color: ConstantColor.DARK_BLUE,)),
              ),
              Container(
                height: height*0.3,
                  child: Image.asset("assets/logo.png")),
              ListTile(
                title: roundedBox(ConstantColor.YELLOW,"PROFILE"),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  ),
                },
              ),
              ListTile(
                title: roundedBox(ConstantColor.YELLOW,"EDIT BUDGET"),
                onTap: () =>     Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HouseHoldExpense(),
                  ),
                ),
              ),
              ListTile(
                title: roundedBox(ConstantColor.YELLOW,"ADD TRANSACTION"),
                onTap: () =>   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddTransaction(),
                  ),
                ),

              ),
              ListTile(
                title: roundedBox(ConstantColor.YELLOW,"GOALS"),
                onTap: () =>  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Goals(),
                  ),
                ),
              ),
              ListTile(
                title: roundedBox(ConstantColor.YELLOW,"RESOURCES"),
                onTap: () =>   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Resources(),
                  ),
                ),
              ),
              ListTile(
                title: roundedBox(ConstantColor.GREY,"LOGOUT"),
                onTap: () =>  Navigator.pop(context),
              ),
              const Center(
                child: Text('COPYRIGHT ENACTUS NSCC IVANY CAMPUS 2021',
                  style: TextStyle(color: ConstantColor.DARK_BLUE, fontSize: 10, height: 10),),
              ),
            ],
          ),
        ),

      ),
    );

  }
  Widget roundedBox(Color dynamicColor, String name)
  {
    return Container(
      height: height*0.055,

      margin: const EdgeInsets.only(top:5),
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.5), //(x,y)
            blurRadius: 3.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(40)),

      ),
      child: Center(child: Text(name, style: TextStyle(color: ConstantColor.DARK_BLUE, fontSize: 16),)),
    );

  }
}
