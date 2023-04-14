import 'dart:async';
import 'package:fashion_seller_hub/Screen/Home_Screen.dart';
import 'package:fashion_seller_hub/Screen/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../Common_screen/Comman_Container.dart';
import '../Common_screen/Comman_text.dart';
import '../helper/variable.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);
  @override
  State<Splash_Screen> createState() => Splash_ScreenState();
}

class Splash_ScreenState extends State<Splash_Screen> {
  static const String KeyValue = "Login";
  Future Getusername() async {
    var sh = await SharedPreferences.getInstance();
    var IsLoggedIn = sh.getBool(KeyValue);

    Timer(Duration(seconds: 2), () {
      if (IsLoggedIn != null) {
        if (IsLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home_Screen(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Tab_Bar(),
            ),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Tab_Bar(),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    Getusername();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Comman_Container(
            height: Get.height,
            width: Get.width,
            gradient: LinearGradient(colors: [
              Color(0xff2D6A4F),
              Color(0xff95D5B2),
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                    height: 100.sp,
                    width: 100.sp,
                    image: AssetImage(SplashAppLogowhite),
                  ),
                ),
                SizedBox(
                  height: 7.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Comman_Text(
                    //   text: "Nest",
                    //   color: Colors.black,
                    //   fontSize: 30.sp,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    // SizedBox(
                    //   width: 5.sp,
                    // ),
                    Comman_Text(
                      text: "Seller App ",
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
