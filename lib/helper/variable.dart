import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

//color
const Color DarkGreen2 = Color(0xff2D6A4F);
const Color LightGreen1 = Color(0xff95d5d2);
const Color DarkGreen = Color(0xff40916C);
const Color LightGreen = Color(0xff52B788);
const Color lightGreen = Color(0xffB7E4C7);
const Color iconColor_Drawer = Color(0xffFFFFFF);
const Color iconColor = Color(0xff74C69D);
const Color orange_logo = Color(0xffF58634);
const Color green = Colors.green;
const Color purple = Colors.purple;
const Color pink = Colors.pink;
const Color deepOrange = Colors.deepOrange;
const Color teal = Colors.teal;
const Color yellow = Colors.yellow;
const Color amber = Colors.amber;
const Color grey = Colors.grey;

const Color red = Colors.red;
const Color white = Colors.white;
const Color white70 = Colors.white70;
const Color white60 = Colors.white60;
const Color black = Colors.black;
const Color black54 = Colors.black54;
const Color black87 = Colors.black87;
const Color black26 = Colors.black26;
const Color transparent = Colors.transparent;

//image
const String AppLogo = "assets/images/app_logo.png";
const String ThankYou = "assets/images/Thank-You.png";
const SplashAppLogo = "asserts/logo/nestinSplash.png";
const SplashAppLogowhite = "assets/logo/app_white.png";

// logo
const logo_green = "assets/logo/splash_main.png";
const main_logo = "assets/logo/main_logo.png";
const splash_mainLogo = "assets/logo/splash_main.png";
const text_logo = "assets/logo/text_logo.png";
const empty_order = "assets/images/Online shopping-pana.png";

//lottie image
const String Apple_lottie = "assets/lottie/apple.json";

//appbar
AppBar coomanAppBar({
  String? name,
  List<Widget>? action,
  bool? centerTitle,
}) {
  return AppBar(
    title: Text(
      "${name}",
    ),
    centerTitle: centerTitle,
    titleTextStyle: TextStyle(fontFamily: "JS1", fontSize: Get.height * 0.022),
    actions: action,
    backgroundColor: DarkGreen2,
  );
}

//drawer screen
List drawer = [
  {
    "name": "Home",
    "icon": Icon(Icons.home_outlined, color: Color(0xff74C69D), size: 22.sp),
  },
  // {
  //   "name": "My Product",
  //   "icon": Icon(Icons.shopping_cart_outlined,
  //       color: Color(0xff74C69D), size: 22.sp),
  // },
  {
    "name": "Order",
    "icon": Icon(Icons.add_box_outlined, color: Color(0xff74C69D), size: 22.sp),
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
    "icon":
        Icon(Icons.help_center_outlined, color: Color(0xff74C69D), size: 22.sp),
  },
  {
    "name": "Logout",
    "icon": Icon(Icons.logout, color: Color(0xff74C69D), size: 22.sp),
  },
];
//RegExp
RegExp email = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
RegExp password =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
