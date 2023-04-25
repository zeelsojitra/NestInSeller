import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_seller_hub/Common_screen/Comman_Container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Common_screen/Comman_text.dart';
import '../helper/variable.dart';

class My_Product_Screen extends StatefulWidget {
  const My_Product_Screen({Key? key}) : super(key: key);

  @override
  State<My_Product_Screen> createState() => _My_Product_ScreenState();
}

class _My_Product_ScreenState extends State<My_Product_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: coomanAppBar(
        name: "My Product",
      ),
      // body: Column(children: [
      //   Expanded(
      //     child: ListView.separated(
      //         itemBuilder: (context, index) {
      //           return Padding(
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //             child: Row(
      //               children: [
      //                 Text("${index + 1}",
      //                     style: TextStyle(
      //                         color: Colors.black,
      //                         fontWeight: FontWeight.bold,
      //                         fontSize: 15.sp)),
      //                 SizedBox(
      //                   width: 10,
      //                 ),
      //                 Container(
      //                   height: 90.sp,
      //                   width: 90.sp,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xff40916C),
      //                       borderRadius: BorderRadius.circular(10.sp)),
      //                 ),
      //                 SizedBox(
      //                   width: 10,
      //                 ),
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Product Name",
      //                       style: TextStyle(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold,
      //                           fontSize: 15.sp),
      //                     ),
      //                     Text(
      //                       "SKU",
      //                       style: TextStyle(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold,
      //                           fontSize: 15.sp),
      //                     ),
      //                     Text(
      //                       "MRP",
      //                       style: TextStyle(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold,
      //                           fontSize: 15.sp),
      //                     ),
      //                     Row(
      //                       children: [
      //                         Text(
      //                           "Stock:",
      //                           style: TextStyle(
      //                               color: Colors.black,
      //                               fontWeight: FontWeight.bold,
      //                               fontSize: 15.sp),
      //                         ),
      //                         SizedBox(
      //                           width: 10,
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           );
      //         },
      //         separatorBuilder: (context, index) {
      //           return Divider(
      //             thickness: 2,
      //           );
      //         },
      //         itemCount: 10),
      //   )
      // ]),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Product")
            .orderBy("createdDate", descending: true)
            .snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done ||
              snapshot.hasData) {
            List<DocumentSnapshot> your_product = snapshot.data!.docs;
            print("your product length${your_product.length}");
            print("${FirebaseAuth.instance.currentUser!.uid}");
            return snapshot.data!.docs.isEmpty
                ? Text("hello")
                : SizedBox(
                    height: 565.sp,
                    child: ListView.separated(
                      itemCount: your_product.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Comman_Container(
                              // ontap: () {
                              //   Get.to(OderDetails(
                              //     date: order[index].get("createdDate"),
                              //     image: order[index].get("image"),
                              //     name: order[index].get("product_name"),
                              //     price: order[index].get("product_price"),
                              //     details: order[index].get("product_details"),
                              //     category:
                              //         order[index].get("product_catagory"),
                              //   ));
                              // },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                                child: Comman_Container(
                                  margin: EdgeInsets.symmetric(vertical: 8.sp),
                                  height: 120.sp,
                                  width: 120.sp,
                                  color: grey,
                                  BorderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          your_product[index].get("image"))),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 20,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Comman_Text(
                                      text:
                                          "Product Name :- ${your_product[index].get("product_name")}",
                                      fontSize: 15.sp),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Comman_Text(
                                      text: your_product[index]
                                          .get("product_catagory"),
                                      fontSize: 15.sp),
                                  // SizedBox(
                                  //   height: 10.sp,
                                  // ),
                                  // Comman_Text(
                                  //   text: "OrderId",
                                  //   fontSize: 15.sp,
                                  // ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          height: 2.sp,
                          color: black,
                          thickness: 1,
                        );
                      },
                    ),
                  );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
