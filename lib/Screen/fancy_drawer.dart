import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_launcher/email_launcher.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:fashion_seller_hub/Screen/Help_screen.dart';
import 'package:fashion_seller_hub/Screen/Order_Screen.dart';
import 'package:fashion_seller_hub/Screen/Payment_Screen.dart';
import 'package:fashion_seller_hub/Screen/Send_feedback.dart';
import 'package:fashion_seller_hub/Screen/homeScreen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common_screen/shardpefrence.dart';
import '../common_screen/Comman_Container.dart';
import '../common_screen/Comman_text.dart';

import '../email authantication/EmailAuthService.dart';
import '../getx/controller.dart';
import '../google auth service/google_auth_service.dart';
import '../helper/variable.dart';
import 'Splash_Screen.dart';
import 'login_screen_h.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: const Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        backgroundColor: Colors.transparent,
        controller: _controller,
        drawerItems: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.6,
                child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [DarkGreen2, LightGreen]),
                        borderRadius: BorderRadius.circular(17)),
                    accountName: Comman_Text(
                      // text: sharedPreferences!.getString("profile_name")!,
                      text: "profile email",
                      color: white,
                      fontSize: 16.sp,
                    ),
                    accountEmail: Comman_Text(
                      //text: sharedPreferences!.getString("profile_email")!,
                      text: "profile email",
                      color: white,
                      fontSize: 12.sp,
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("web".split("").first),
                    ),
                    // currentAccountPicture: InkWell(
                    //   child: Container(
                    //     height: 80.sp,
                    //     width: 80.sp,
                    //     child: CircleAvatar(
                    //       backgroundImage: NetworkImage(
                    //           sharedPreferences!.getString("profile_image")!),
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ),
              // Container(
              //   color: Colors.black,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Comman_Text(
              //         // text: sharedPreferences!.getString("profile_name")!,
              //         text: "profile email",
              //         color: black,
              //         fontSize: 16.sp,
              //       ),
              //       Comman_Text(
              //         //text: sharedPreferences!.getString("profile_email")!,
              //         text: "profile email",
              //         color: black,
              //         fontSize: 12.sp,
              //       ),
              //     ],
              //   ),
              //   height: Get.height * 0.2,
              //   width: Get.width * 0.6,
              // )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              drawer.length,
              (index) => InkWell(
                onTap: () async {
                  if (index == 0) {
                    Get.to(Home_Screen());
                  }
                  if (index == 1) {
                    Get.to(Order_screen());
                  }
                  if (index == 2) {
                    Get.to(Payment_Screen());
                  }
                  if (index == 3) {
                    Get.to(Send_Feedback_screen());
                  }
                  if (index == 4) {
                    Email email = Email(
                      to: ['nestinecommerce@gmail.com'],
                    );
                    await EmailLauncher.launch(email);
                  }
                  if (index == 5) {}
                  if (index == 6) {
                    Get.to(Help_Screen());
                  }
                  if (index == 7) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Logout"),
                            content:
                                const Text("Are you sure you want to logout?"),
                            actions: [
                              IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.done,
                                  color: Colors.green,
                                ),
                                onPressed: () async {
                                  FirebaseAuth.instance.signOut();
                                  EmailAuthService.LogoutUser()
                                      .then((value) async {
                                    SharedPreferences sh =
                                        await SharedPreferences.getInstance();
                                    sh.setBool(
                                        Splash_ScreenState.KeyValue, false);
                                    GoogleAuthService.googleSignOut();
                                    sh
                                        .remove("email")
                                        .then((value) => Get.off(Tab_Bar()));
                                  });
                                  sharedPreferences!.remove("profile_email");
                                  sharedPreferences!.remove("profile_image");
                                  sharedPreferences!.remove("profile_name");
                                },
                              ),
                            ],
                          );
                        });
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 15.sp),
                  child: Container(
                    height: Get.height * 0.062,
                    width: Get.width * 0.6,
                    decoration: BoxDecoration(
                        // color: white,
                        gradient:
                            LinearGradient(colors: [DarkGreen2, LightGreen]),
                        boxShadow: [
                          BoxShadow(
                              color: grey, blurRadius: 4, offset: Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(13)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12.sp,
                        ),
                        drawer[index]['icon'],
                        SizedBox(
                          width: 15.sp,
                        ),
                        Comman_Text(
                          text: drawer[index]['name'],
                          fontSize: 16.sp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.sp),
            child: Row(
              children: [
                Image.asset(
                  text_logo,
                  width: 150.sp,
                ),
              ],
            ),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            elevation: 4.0,
            title: const Text(
              "Home",
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart_outlined),
              )
            ],
            backgroundColor: DarkGreen2,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {
                _controller.toggle();
              },
            ),
          ),
          body: Text("hello"),
        ),
      ),
    );
  }
}
