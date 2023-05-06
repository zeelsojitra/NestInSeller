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
import 'Add_listing_Screen.dart';
import 'Product_Detils.dart';
import 'Splash_Screen.dart';
import 'login_screen_h.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1>
    with SingleTickerProviderStateMixin {
  String? useremail, username;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> getUserEmail() async {
    final SharedPreferences prefs = await _prefs;

    final email = prefs.getString("profile_email");
    final name = prefs.getString("profile_name");

    useremail = email;
    username = name;

    setState(() {});
    print("userapp name${email}");
    print("userapp name${name}");
  }

  late FancyDrawerController _controller;

  @override
  void initState() {
    getUserEmail();
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
                      text: "",
                      // text: sharedPreferences!.getString("profile_name"),
                      color: white,
                      fontSize: 16.sp,
                    ),
                    accountEmail: Comman_Text(
                      // text:
                      //     "sharedPreferences!.getString(" "profile_email" "),",
                      text: "",
                      color: white,
                      fontSize: 12.sp,
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Comman_Text(
                        color: DarkGreen2,
                        fontFamily: "JS1",
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * 0.03,
                        // text:
                        //     "${sharedPreferences!.getString("profile_name")}"
                        //         .split("")
                        //         .first),
                      ),
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
              ),
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
                                  print("remove name${profile_email}");
                                  print("remove name${profile_name}");
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
          floatingActionButton: Comman_Container(
            width: 140.sp,
            height: 44.sp,
            // color: DarkGreen,
            child: FloatingActionButton.extended(
              foregroundColor: Colors.white,
              backgroundColor: DarkGreen,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Add_Product(),
                    ));
              },
              label: Comman_Text(
                  text: "Add Product", fontSize: 15.sp, fontFamily: "JB1"),
              icon: Icon(
                Icons.add,
                size: 29,
              ),
            ),
          ),
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
          body: Center(
            child: Column(
              children: [
                // Column(
                //   children: [
                //     GetBuilder<Controller>(
                //       builder: (controller) {
                //         return Column(
                //           children: [
                //             Stack(
                //               children: [
                //                 VxSwiper.builder(
                //                   onPageChanged: (index) {
                //                     controller.setSelectScreen(index);
                //                   },
                //                   aspectRatio: 16 / 9,
                //                   height: 130.sp,
                //                   autoPlayAnimationDuration: Duration(seconds: 2),
                //                   enlargeCenterPage: true,
                //                   itemCount: Pageview.length,
                //                   itemBuilder: (context, index) {
                //                     return Padding(
                //                       padding: const EdgeInsets.all(8.0),
                //                       child: Comman_Container(
                //                         child: Padding(
                //                           padding: EdgeInsets.symmetric(
                //                               vertical: 15.sp, horizontal: 15.sp),
                //                           child: Column(
                //                             crossAxisAlignment:
                //                                 CrossAxisAlignment.start,
                //                             children: [
                //                               Comman_Text(
                //                                 text: Pageview[index]['title'],
                //                                 color: Colors.white,
                //                                 fontWeight: FontWeight.w400,
                //                                 fontSize: 20.sp,
                //                               ),
                //                               SizedBox(
                //                                 height: 5.sp,
                //                               ),
                //                               Comman_Text(
                //                                 text: Pageview[index]['subtitile'],
                //                                 color: Colors.white,
                //                                 fontWeight: FontWeight.w400,
                //                                 fontSize: 18.sp,
                //                               )
                //                             ],
                //                           ),
                //                         ),
                //                         width: double.infinity,
                //                         color: Colors.red,
                //                         BorderRadius: BorderRadius.circular(20),
                //                         image: DecorationImage(
                //                           fit: BoxFit.cover,
                //                           image: AssetImage(
                //                             Pageview[index]['image'],
                //                           ),
                //                         ),
                //                       ),
                //                     );
                //                   },
                //                 ),
                //                 Positioned(
                //                   bottom: 15,
                //                   right: 0,
                //                   left: 0,
                //                   child: Row(
                //                       mainAxisAlignment: MainAxisAlignment.center,
                //                       children: List.generate(
                //                         3,
                //                         (index) => Padding(
                //                           padding:
                //                               EdgeInsets.symmetric(horizontal: 1.sp),
                //                           child: CircleAvatar(
                //                             radius: 5,
                //                             backgroundColor:
                //                                 controller.onchange == index
                //                                     ? Colors.green
                //                                     : Colors.white,
                //                           ),
                //                         ),
                //                       )),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         );
                //       },
                //     ),
                //   ],
                // ),
                // StreamBuilder(
                //   stream: FirebaseFirestore.instance
                //       .collection("user")
                //       .doc(FirebaseAuth.instance.currentUser!.uid)
                //       .collection('Order')
                //       .where("sellerid",
                //           isEqualTo: "${FirebaseAuth.instance.currentUser!.uid}")
                //       .snapshots(),
                //   builder: (BuildContext context,
                //       AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                //     if (snapshot.hasData) {
                //       return SizedBox(
                //         height: 400.sp,
                //         child: ListView.builder(
                //           itemCount: snapshot.data?.docs.length,
                //           itemBuilder: (context, index) {
                //             var data = snapshot.data!.docs[index];
                //             //print("numberofoder${snapshot.data?.docs.length}");
                //             return Comman_Container(
                //               margin: EdgeInsets.only(right: 10, bottom: 10),
                //               height: 150.sp,
                //               width: 150.sp,
                //               child: Image.network(data['image']),
                //             );
                //           },
                //         ),
                //       );
                //     } else {
                //       return Center(child: CircularProgressIndicator());
                //     }
                //   },
                // ),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("Product")
                      .where("seller_id",
                          isEqualTo:
                              "${FirebaseAuth.instance.currentUser!.uid}")
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                          snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return snapshot.data!.docs.isNotEmpty
                        ? Expanded(
                            child: ListView.builder(
                              itemCount: snapshot.data?.docs.length,
                              itemBuilder: (context, index) {
                                var data = snapshot.data!.docs[index];
                                //print("numberofoder${snapshot.data?.docs.length}");
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.sp, vertical: 10.sp),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(
                                        ProductDetilsScreen(
                                          image: data['image'],
                                          category: data["product_catagory"],
                                          details: data["product_details"],
                                          name: data["product_name"],
                                          price: data["product_price"],
                                          stock: data["product_stock"],
                                        ),
                                      );
                                    },
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.grey.shade200,
                                      child: Comman_Container(
                                        height: 140.sp,
                                        width: 120.sp,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.sp,
                                                  horizontal: 10.sp),
                                              child: Comman_Container(
                                                height: 140.sp,
                                                width: 80.sp,
                                                BorderRadius:
                                                    BorderRadius.circular(5.sp),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      data["image"]),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Comman_Text(
                                                        text: "Product Name:",
                                                        color: Vx.black,
                                                        fontSize: 12.sp,
                                                        fontFamily: "JB1",
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    Comman_Text(
                                                      text:
                                                          "${data["product_name"]}",
                                                      color: grey,
                                                      fontSize: 12.sp,
                                                      fontFamily: "JM1",
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Comman_Text(
                                                      text:
                                                          "Product Categaroy:",
                                                      color: Vx.black,
                                                      fontSize: 12.sp,
                                                      fontFamily: "JB1",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    Comman_Text(
                                                      text:
                                                          "${data["product_catagory"]}",
                                                      color: grey,
                                                      fontSize: 12.sp,
                                                      fontFamily: "JM1",
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Comman_Text(
                                                      text: "Product Price:",
                                                      color: Vx.black,
                                                      fontSize: 12.sp,
                                                      fontFamily: "JB1",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    Comman_Text(
                                                      text:
                                                          "₹${data["product_price"]}",
                                                      color: red,
                                                      fontSize: 12.sp,
                                                      fontFamily: "JM1",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : Expanded(
                            child: Image.asset(
                              "assets/images/EcommercePorductAddi.png",
                              height: Get.height * 0.35,
                              width: Get.width,
                            ),
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
