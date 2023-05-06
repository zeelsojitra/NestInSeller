// import 'package:email_launcher/email_launcher.dart';
// import 'package:fashion_seller_hub/Screen/Order_Screen.dart';
// import 'package:fashion_seller_hub/Screen/tab_bar.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:sizer/sizer.dart';
// import '../Common_screen/Comman_text.dart';
// import '../Common_screen/shardpefrence.dart';
// import '../email authantication/EmailAuthService.dart';
// import '../google auth service/google_auth_service.dart';
// import '../helper/variable.dart';
// import 'Help_screen.dart';
// import 'My_product_Screen.dart';
// import 'Payment_Screen.dart';
// import 'Send_feedback.dart';
// import 'Splash_Screen.dart';
// import 'homeScreen.dart';
// import 'login_screen_h.dart';
//
// class DrawerScreen extends StatefulWidget {
//   const DrawerScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DrawerScreen> createState() => _DrawerScreenState();
// }
//
// class _DrawerScreenState extends State<DrawerScreen> {
//   List drawer = [
//     {
//       "name": "Home",
//       "icon": Icon(Icons.home_outlined, color: Color(0xff74C69D), size: 22.sp),
//     },
//     {
//       "name": "Order",
//       "icon": Icon(Icons.shopping_cart_outlined,
//           color: Color(0xff74C69D), size: 22.sp),
//     },
//     {
//       "name": "Payments",
//       "icon": Icon(Icons.currency_rupee, color: Color(0xff74C69D), size: 22.sp),
//     },
//     {
//       "name": "Send Feedback",
//       "icon":
//           Icon(Icons.feedback_outlined, color: Color(0xff74C69D), size: 22.sp),
//     },
//     {
//       "name": "Contect Us",
//       "icon": Icon(
//         Icons.contact_support_outlined,
//         color: Color(0xff74C69D),
//         size: 22.sp,
//       ),
//     },
//     {
//       "name": "About Us",
//       "icon":
//           Icon(Icons.feedback_outlined, color: Color(0xff74C69D), size: 22.sp),
//     },
//     {
//       "name": "Help",
//       "icon": Icon(Icons.help_center_outlined,
//           color: Color(0xff74C69D), size: 22.sp),
//     },
//     {
//       "name": "Logout",
//       "icon": Icon(Icons.logout, color: Color(0xff74C69D), size: 22.sp),
//     },
//   ];
//   String? useremail, username;
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//
//   Future<void> getUserEmail() async {
//     final SharedPreferences prefs = await _prefs;
//
//     final email = prefs.getString("profile_email");
//     final name = prefs.getString("profile_name");
//
//     useremail = email;
//     username = name;
//
//     setState(() {});
//     print("userapp name${username}");
//     print("userapp name${useremail}");
//   }
//
//   @override
//   void initState() {
//     getUserEmail();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("nameeee${username}");
//     return Drawer(
//       backgroundColor: Color(0xfff0f0f0),
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               DrawerHeader(
//                   padding: EdgeInsets.zero,
//                   child: UserAccountsDrawerHeader(
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             colors: [Color(0xff2D6A4F), Color(0xff95D5B2)]),
//                         borderRadius: BorderRadius.only(
//                             bottomRight: Radius.circular(140))),
//                     accountName: Comman_Text(
//                       text: "${username}",
//                       color: white,
//                       fontSize: 16.sp,
//                     ),
//                     accountEmail: Comman_Text(
//                       text: "${useremail}",
//                       color: white,
//                       fontSize: 16.sp,
//                     ),
//                     currentAccountPicture: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       child: Comman_Text(
//                           color: DarkGreen2,
//                           //fontFamily: "JS1",
//                           fontWeight: FontWeight.bold,
//                           fontSize: Get.height * 0.03,
//                           text: "${username}".split("").first),
//                     ),
//                   )),
//               Positioned(
//                 bottom: 25,
//                 left: 230,
//                 child: CircleAvatar(
//                   radius: 21,
//                   backgroundColor: Colors.white,
//                   child: Icon(Icons.edit_outlined, color: Colors.green),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 7.sp),
//             child: Column(
//               children: List.generate(
//                 drawer.length,
//                 (index) => Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () async {
//                         if (index == 0) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Home_Screen(),
//                             ),
//                           );
//                         } else if (index == 1) {
//                           Get.to(Order_screen());
//                         } else if (index == 2) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Payment_Screen(),
//                             ),
//                           );
//                         } else if (index == 3) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Send_Feedback_screen(),
//                             ),
//                           );
//                         } else if (index == 4) {
//                           Email email = Email(
//                             to: ['nestinecommerce@gmail.com'],
//                           );
//                           await EmailLauncher.launch(email);
//                         } else if (index == 5) {
//                         } else if (index == 6) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Help_Screen(),
//                             ),
//                           );
//                         } else if (index == 7) {
//                           showDialog(
//                               barrierDismissible: false,
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text("Logout",
//                                       style: TextStyle(
//                                           fontSize: 20.sp, fontFamily: "JB1")),
//                                   content: Text(
//                                       "Are you sure you want to logout?",
//                                       style: TextStyle(
//                                           fontSize: 15.sp, fontFamily: "JV1")),
//                                   actions: [
//                                     InkWell(
//                                       onTap: () {
//                                         Get.back();
//                                       },
//                                       child: Icon(Icons.cancel_outlined,
//                                           color: Colors.red),
//                                     ),
//                                     IconButton(
//                                       icon: const Icon(
//                                         Icons.done,
//                                         color: Colors.green,
//                                       ),
//                                       onPressed: () async {
//                                         FirebaseAuth.instance.signOut();
//                                         EmailAuthService.LogoutUser()
//                                             .then((value) async {
//                                           SharedPreferences sh =
//                                               await SharedPreferences
//                                                   .getInstance();
//                                           sh.setBool(
//                                               Splash_ScreenState.KeyValue,
//                                               false);
//                                           GoogleAuthService.googleSignOut();
//                                           sh.remove("email").then(
//                                               (value) => Get.off(Tab_Bar()));
//                                         });
//                                         // sharedPreferences!
//                                         //     .remove("profile_email");
//                                         // sharedPreferences!
//                                         //     .remove("profile_image");
//                                         // sharedPreferences!
//                                         //     .remove("profile_name");
//                                       },
//                                     ),
//                                   ],
//                                 );
//                               });
//                         }
//                       },
//                       child: Container(
//                         height: 40.sp,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 4,
//                                   offset: Offset(1, 1))
//                             ],
//                             borderRadius: BorderRadius.circular(13)),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 15.sp,
//                             ),
//                             drawer[index]['icon'],
//                             SizedBox(
//                               width: 15.sp,
//                             ),
//                             Text(
//                               drawer[index]['name'],
//                               style: TextStyle(
//                                   fontSize: 15.sp,
//                                   color: Colors.black54,
//                                   fontWeight: FontWeight.bold),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10.sp,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
