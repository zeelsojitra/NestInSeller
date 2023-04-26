import 'dart:async';
import 'package:fashion_seller_hub/Screen/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../Common_screen/Comman_Container.dart';
import '../Common_screen/Comman_text.dart';
import '../helper/variable.dart';
import 'fancy_drawer.dart';
import 'homeScreen.dart';
import 'login_screen_h.dart';

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
              builder: (context) => HomeScreen1(),
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
            color: black,
            // gradient: LinearGradient(colors: [
            //   LightGreen,
            //   DarkGreen2,
            // ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: Get.height * 0.55,
                  width: Get.width * 0.55,
                  image: AssetImage(splash_mainLogo),
                ),
                // SizedBox(
                //   height: 7.sp,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Comman_Text(
                //       text: "Nest",
                //       color: white,
                //       fontSize: 30.sp,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     // SizedBox(
                //     //   width: 5.sp,
                //     // ),
                //     Comman_Text(
                //       text: "In",
                //       color: white,
                //       fontSize: 30.sp,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
