import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_seller_hub/Screen/Home_Screen.dart';
import 'package:fashion_seller_hub/Screen/sign_in.dart';
import 'package:fashion_seller_hub/Screen/sign_up.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../Common_screen/Comman_text.dart';
import '../common_screen/Comman_Container.dart';
import '../google auth service/google_auth_service.dart';
import 'Splash_Screen.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({Key? key}) : super(key: key);

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> with SingleTickerProviderStateMixin {
  TabController? tabController;
  final gloablekey = GlobalKey<FormState>();
  final Email_controler = TextEditingController();
  final Password_controler = TextEditingController();
  List name = [
    'Sign Up',
    'Sign In',
  ];
  List tabItem = [
    "Sign Up",
    "Sign In",
  ];
  int selected = 0;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    tabController!.addListener(() {
      setState(() {
        selected = tabController!.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Comman_Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 15.sp,
                              left: 15.sp,
                              top: 15.sp,
                              bottom: 5.sp),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.green,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_outlined,
                                  size: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.sp, vertical: 15.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Comman_Text(
                                text: "Shipping and Track Anytime ",
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Comman_Text(
                                text: "Get great experience with tracky",
                                color: Colors.white70,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 30.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    height: 220.sp,
                    width: double.infinity,
                    gradient: LinearGradient(colors: [
                      Color(0xff2D6A4F),
                      Color(0xff95D5B2),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 120.sp, right: 25, left: 25),
                    child: Comman_Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.sp,
                          ),
                          Comman_Container(
                            child: TabBar(
                              labelPadding: EdgeInsets.symmetric(
                                  horizontal: 20.sp, vertical: 10.sp),
                              controller: tabController,
                              indicatorColor: Color(0xff2D6A4F),
                              indicatorPadding:
                                  EdgeInsets.symmetric(horizontal: 25.sp),
                              tabs: List.generate(
                                2,
                                (index) => Center(
                                  child: Comman_Text(
                                    text: name[index],
                                    fontSize: 16.sp,
                                    color: selected == index
                                        ? Color(0xff2D6A4F)
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Comman_Container(
                            BorderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                            height: 270.sp,
                            width: 500.sp,
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                Sign_Up(),
                                Sign_In(),
                              ],
                            ),
                          ),
                        ],
                      ),
                      color: Colors.white,
                      BoxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          offset: Offset(2, 2),
                          blurRadius: 7,
                        )
                      ],
                      height: 320.sp,
                      width: 260.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.sp,
              ),
              Center(
                child: Comman_Text(
                  text: "Or Sign In With",
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    GoogleAuthService.signInWithGoogle().then((value) async {
                      if (value != null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Screen(),
                            ));
                        FirebaseFirestore.instance
                            .collection("Seller")
                            .doc(FirebaseAuth.instance.currentUser!.uid)
                            .set({
                          "profile_image": profile_image,
                          "profile_name": profile_name,
                          "profile_email": profile_email,
                          "Seller_id": FirebaseAuth.instance.currentUser!.uid,
                        });
                        SharedPreferences sh =
                            await SharedPreferences.getInstance();
                        sh.setBool(Splash_ScreenState.KeyValue, true);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "Email is already in use by another accoount")));
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(2, 3),
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    height: 38.sp,
                    width: 38.sp,
                    child: Center(
                      child: Lottie.asset(
                        'assets/lottie/google.json',
                        height: 27.sp,
                        width: 27.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
