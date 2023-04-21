import 'package:fashion_seller_hub/Screen/Order_Screen.dart';
import 'package:fashion_seller_hub/Screen/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../Common_screen/Comman_text.dart';
import 'Help_screen.dart';
import 'My_product_Screen.dart';
import 'Payment_Screen.dart';
import 'Send_feedback.dart';
import 'Splash_Screen.dart';
import 'homeScreen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List drawer = [
    {
      "name": "Home",
      "icon": Icon(Icons.home_outlined, color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "My Product",
      "icon": Icon(Icons.shopping_cart_outlined,
          color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "Order",
      "icon":
          Icon(Icons.add_box_outlined, color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "Payments",
      "icon": Icon(Icons.currency_rupee, color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "Send Feedback",
      "icon":
          Icon(Icons.feedback_outlined, color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "Contect Us",
      "icon": Icon(Icons.contact_support_outlined,
          color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "About Us",
      "icon":
          Icon(Icons.feedback_outlined, color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "Help",
      "icon": Icon(Icons.help_center_outlined,
          color: Color(0xff74C69D), size: 22.sp),
    },
    {
      "name": "Logout",
      "icon": Icon(Icons.logout, color: Color(0xff74C69D), size: 22.sp),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xfff0f0f0),
      child: Column(
        children: [
          Stack(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff2D6A4F), Color(0xff95D5B2)]),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(140))),
                    accountName:
                        Comman_Text(text: "Oleh Chabanov", fontSize: 18.sp),
                    accountEmail:
                        Comman_Text(text: "+91 123 456 7890", fontSize: 14.sp),
                    currentAccountPicture: InkWell(
                      child: Container(
                        height: 170.sp,
                        width: 170.sp,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(),
                      ),
                    ),
                  )),
              Positioned(
                bottom: 25,
                left: 230,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.edit_outlined, color: Colors.green),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 7.sp),
            child: Column(
              children: List.generate(
                drawer.length,
                (index) => Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Screen(),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => My_Product_Screen(),
                            ),
                          );
                        } else if (index == 2) {
                          Get.to(Order_screen());
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Payment_Screen(),
                            ),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Send_Feedback_screen(),
                            ),
                          );
                        } else if (index == 5) {
                        } else if (index == 6) {
                        } else if (index == 7) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Help_Screen(),
                            ),
                          );
                        } else if (index == 8) {
                          SharedPreferences sh =
                              await SharedPreferences.getInstance();
                          sh.setBool(Splash_ScreenState.KeyValue, false).then(
                                (value) => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Tab_Bar(),
                                  ),
                                ),
                              );
                        }
                      },
                      child: Container(
                        height: 40.sp,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(1, 1))
                            ],
                            borderRadius: BorderRadius.circular(13)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15.sp,
                            ),
                            drawer[index]['icon'],
                            SizedBox(
                              width: 15.sp,
                            ),
                            Text(
                              drawer[index]['name'],
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
