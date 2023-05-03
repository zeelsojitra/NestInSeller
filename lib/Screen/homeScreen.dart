import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_seller_hub/Screen/Product_Detils.dart';
import 'package:fashion_seller_hub/helper/variable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Common_screen/Comman_Container.dart';
import '../Common_screen/Comman_text.dart';
import '../getx/controller.dart';
import 'Add_listing_Screen.dart';
import 'Drawer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List Pageview = [
    {
      'image': "assets/pageview/pageview1.jpg",
      'title': "Fashion sale",
      "subtitile": "See More >"
    },
    {
      'image': "assets/pageview/pageview2.jpg",
      'title': "Fashion sale",
      "subtitile": "See More >"
    },
    {
      'image': "assets/pageview/pageview3.jpg",
      'title': "Fashion sale",
      "subtitile": "See More >"
    },
  ];

  int selected = 0;
  final Controller con = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text: "Add Product", fontSize: 15.sp, //fontFamily: "JB1",
    ),
          icon: Icon(
            Icons.add,
            size: 29,
          ),
        ),
      ),
      appBar: coomanAppBar(
        name: "Fashion Seller Hub",
      ),
      drawer: DrawerScreen(),
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
                      isEqualTo: "${FirebaseAuth.instance.currentUser!.uid}")
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
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
                                              image:
                                                  NetworkImage(data["image"]),
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
                                                    //fontFamily: "JB1",
                                                    fontWeight:
                                                        FontWeight.bold),
                                                Comman_Text(
                                                  text:
                                                      "${data["product_name"]}",
                                                  color: grey,
                                                  fontSize: 12.sp,
                                                  //fontFamily: "JM1",
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Comman_Text(
                                                  text: "Product Categaroy:",
                                                  color: Vx.black,
                                                  fontSize: 12.sp,
                                                  //fontFamily: "JB1",
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                Comman_Text(
                                                  text:
                                                      "${data["product_catagory"]}",
                                                  color: grey,
                                                  fontSize: 12.sp,
                                                  //fontFamily: "JM1",
                                                  fontWeight: FontWeight.w600,
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
                                                  //fontFamily: "JB1",
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                Comman_Text(
                                                  text:
                                                      "₹${data["product_price"]}",
                                                  color: red,
                                                  fontSize: 12.sp,
                                                  //fontFamily: "JM1",
                                                  fontWeight: FontWeight.bold,
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
                    : Image.asset(
                        "assets/images/EcommercePorductAddi.png",
                        height: 350,
                        width: 350,
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
