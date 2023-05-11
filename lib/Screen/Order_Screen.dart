import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_seller_hub/Common_screen/Comman_Container.dart';
import 'package:fashion_seller_hub/Common_screen/Comman_text.dart';
import 'package:fashion_seller_hub/Screen/Order_Completed_Sceen.dart';

import 'package:fashion_seller_hub/Screen/Order_UpcominScreen.dart';
import 'package:fashion_seller_hub/helper/variable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Order_screen extends StatefulWidget {
  const Order_screen({Key? key}) : super(key: key);

  @override
  State<Order_screen> createState() => _Order_screenState();
}

class _Order_screenState extends State<Order_screen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int Radioselected = 0;
    return Scaffold(
      appBar: coomanAppBar(name: "Order"),
      // AppBar(
      //     elevation: 0,
      //     actions: [
      //       // IconButton(
      //       //     onPressed: () {
      //       //       showModalBottomSheet(
      //       //         context: context,
      //       //         shape: RoundedRectangleBorder(
      //       //             borderRadius:
      //       //                 BorderRadius.vertical(top: Radius.circular(20))),
      //       //         isScrollControlled: true,
      //       //         builder: (context) {
      //       //           return Container(
      //       //             width: 120.sp,
      //       //             height: 210.sp,
      //       //             decoration: BoxDecoration(
      //       //                 color: Colors.white,
      //       //                 borderRadius: BorderRadius.vertical(
      //       //                     top: Radius.circular(20))),
      //       //             child: Column(
      //       //               children: [
      //       //                 SizedBox(
      //       //                   height: 20,
      //       //                 ),
      //       //                 Text("Select Vendor",
      //       //                     style: TextStyle(
      //       //                         color: Colors.black,
      //       //                         fontSize: 18.sp,
      //       //                         fontWeight: FontWeight.bold)),
      //       //                 SizedBox(
      //       //                   height: 10.sp,
      //       //                 ),
      //       //                 Divider(
      //       //                   color: Colors.grey.shade300,
      //       //                   thickness: 1,
      //       //                 ),
      //       //                 SizedBox(
      //       //                   height: 10.sp,
      //       //                 ),
      //       //                 Row(
      //       //                   children: [
      //       //                     Radio(
      //       //                       activeColor: Color(0xff2D6A4F),
      //       //                       value: 0,
      //       //                       groupValue: Radioselected,
      //       //                       onChanged: (value) {
      //       //                         setState(() {
      //       //                           Radioselected = value!;
      //       //                         });
      //       //                       },
      //       //                     ),
      //       //                     Column(
      //       //                       crossAxisAlignment: CrossAxisAlignment.start,
      //       //                       children: [
      //       //                         Text("Name: Ekart Logistics",
      //       //                             style: TextStyle(
      //       //                                 color: Colors.black,
      //       //                                 fontWeight: FontWeight.w500,
      //       //                                 fontSize: 13.sp)),
      //       //                         Text("Orders:5",
      //       //                             style: TextStyle(
      //       //                                 color: Colors.black,
      //       //                                 fontWeight: FontWeight.w500,
      //       //                                 fontSize: 13.sp)),
      //       //                         Text("Pickup",
      //       //                             style: TextStyle(
      //       //                                 color: Colors.black,
      //       //                                 fontWeight: FontWeight.w500,
      //       //                                 fontSize: 13.sp)),
      //       //                         Text("Slot : Not Scheduled",
      //       //                             style: TextStyle(
      //       //                                 color: Colors.black,
      //       //                                 fontWeight: FontWeight.w500,
      //       //                                 fontSize: 13.sp)),
      //       //                       ],
      //       //                     ),
      //       //                   ],
      //       //                 ),
      //       //                 SizedBox(
      //       //                   height: 10,
      //       //                 ),
      //       //                 Divider(
      //       //                   color: Colors.grey.shade200,
      //       //                   thickness: 1,
      //       //                 ),
      //       //                 Padding(
      //       //                   padding:
      //       //                       const EdgeInsets.symmetric(horizontal: 20),
      //       //                   child: Row(
      //       //                     children: [
      //       //                       Container(
      //       //                         height: 40.sp,
      //       //                         width: 128.sp,
      //       //                         decoration: BoxDecoration(
      //       //                             color: Colors.white,
      //       //                             borderRadius: BorderRadius.circular(5),
      //       //                             border: Border.all(color: Colors.grey)),
      //       //                         child: Center(
      //       //                             child: Text(
      //       //                           "Cancel",
      //       //                           style: TextStyle(
      //       //                               color: Color(0xff40916C),
      //       //                               fontSize: 15.sp,
      //       //                               fontWeight: FontWeight.bold),
      //       //                         )),
      //       //                       ),
      //       //                       SizedBox(
      //       //                         width: 10,
      //       //                       ),
      //       //                       Container(
      //       //                           height: 40.sp,
      //       //                           width: 128.sp,
      //       //                           decoration: BoxDecoration(
      //       //                               color: Color(0xff40916C),
      //       //                               borderRadius:
      //       //                                   BorderRadius.circular(5)),
      //       //                           child: Center(
      //       //                               child: Text(
      //       //                             "Confirm",
      //       //                             style: TextStyle(
      //       //                                 color: Colors.white,
      //       //                                 fontSize: 15.sp,
      //       //                                 fontWeight: FontWeight.bold),
      //       //                           ))),
      //       //                     ],
      //       //                   ),
      //       //                 )
      //       //               ],
      //       //             ),
      //       //           );
      //       //         },
      //       //       );
      //       //     },
      //       //     icon: Icon(Icons.save_alt)),
      //     ],
      //     backgroundColor: Color(0xff40916C),
      //     title: Text(
      //       "Orders",
      //       style: TextStyle(fontFamily: "JB1"),
      //     ))
      //     ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.sp,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: TextField(
            //     cursorColor: Colors.grey,
            //     onTap: () {},
            //     style: TextStyle(fontFamily: "JM1"),
            //     decoration: InputDecoration(
            //         contentPadding: EdgeInsets.symmetric(vertical: 10),
            //         prefixIcon: Icon(Icons.search, color: Colors.grey),
            //         fillColor: Colors.white,
            //         filled: true,
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //             borderSide: BorderSide(color: Colors.grey, width: 1)),
            //         focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //             borderSide: BorderSide(color: Colors.grey, width: 1)),
            //         hintText: "Enter Oder ID/item ID",
            //         hintStyle:
            //             TextStyle(color: Colors.grey.shade400, fontSize: 18)),
            //   ),
            // ),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Order')
                    .where("sellerid",
                        isEqualTo: "${FirebaseAuth.instance.currentUser!.uid}")
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return snapshot.data!.docs.isNotEmpty
                      ? SizedBox(
                          height: 580.sp,
                          child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              var data = snapshot.data!.docs[index];
                              print(
                                  "numberofoder${snapshot.data?.docs.length}");
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.sp, vertical: 10.sp),
                                child: Card(
                                  color: Colors.grey.shade200,
                                  elevation: 5,
                                  child: Comman_Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 174.sp,
                                    width: double.infinity,
                                    BorderRadius: BorderRadius.circular(10),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 120.sp,
                                                width: 110.sp,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        data["image"],
                                                      ),
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Qty:1",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: "JB1",
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Comman_Text(
                                                        text: "Payment :",
                                                        color: Colors.black,
                                                        //fontFamily: "JB1",
                                                        fontSize: 13.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    SizedBox(
                                                      width: 10.sp,
                                                    ),
                                                    Comman_Container(
                                                        height: 18.sp,
                                                        width: 50.sp,
                                                        color: Colors.white,
                                                        child: Center(
                                                          child: Comman_Text(
                                                            text: "Online",
                                                            color: red,
                                                            //fontFamily: "JM1",
                                                          ),
                                                        ),
                                                        border: Border.all(
                                                            color: Colors.grey,
                                                            width: 1)),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 3.sp,
                                                ),
                                                Row(
                                                  children: [
                                                    Comman_Text(
                                                      text: "Name:",
                                                      color: Colors.black,
                                                      //fontFamily: "JB1",
                                                      fontSize: 13.sp,
                                                    ),
                                                    SizedBox(
                                                      width: 2.sp,
                                                    ),
                                                    Expanded(
                                                      child: Comman_Text(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        text:
                                                            "${data["product_name"]}",
                                                        color: grey,
                                                        maxLines: 1,
                                                        //fontFamily: "JB1",
                                                        fontSize: 13.sp,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.sp,
                                                ),
                                                Row(
                                                  children: [
                                                    Comman_Text(
                                                        text: "OrderId:",
                                                        color: Colors.black,
                                                        //fontFamily: "JB1",
                                                        fontSize: 13.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    SizedBox(
                                                      width: 2.sp,
                                                    ),
                                                    Expanded(
                                                      child: Comman_Text(
                                                          text:
                                                              "${data["order id"]}",
                                                          color: grey,
                                                          //fontFamily: "JB1",
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.sp,
                                                ),
                                                Comman_Text(
                                                    text: "Order_Date:",
                                                    color: Colors.black,
                                                    //fontFamily: "JB1",
                                                    fontSize: 13.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                SizedBox(
                                                  height: 20.sp,
                                                ),
                                                Comman_Container(
                                                  ontap: () {
                                                    setState(() {
                                                      print(
                                                          "====> This Order Confirm");
                                                      FirebaseFirestore.instance
                                                          .collection(
                                                              'Confirm Order')
                                                          .doc(FirebaseAuth
                                                              .instance
                                                              .currentUser!
                                                              .uid)
                                                          .set({
                                                        "image": ProductImages,
                                                        "product_name":
                                                            ProductName
                                                      });
                                                    });
                                                  },
                                                  height: 40.sp,
                                                  width: 100.sp,
                                                  color: DarkGreen,
                                                  BorderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Center(
                                                      child: Comman_Text(
                                                    text: "Confirm Order",
                                                    fontSize: 12.sp,
                                                    color: white,
                                                    //fontFamily: "JB1",
                                                  )),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(empty_order),
                            ],
                          ),
                        );
                }),
          ],
        ),
      ),
    );
  }
}
