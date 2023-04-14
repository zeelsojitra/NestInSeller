import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_seller_hub/Common_screen/Comman_Container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../getx/controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Controller controller = Get.put(Controller());
  List pageview = [
    'assets/pageview/pageview1.jpg',
    'assets/pageview/pageview2.jpg',
    'assets/pageview/pageview3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  GetBuilder<Controller>(
                    builder: (controller) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          VxSwiper.builder(
                            enlargeCenterPage: true,
                            onPageChanged: (index) {
                              controller.setSelectScreen(index);
                            },
                            height: 130.sp,
                            aspectRatio: 16 / 9,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Comman_Container(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    pageview[index],
                                  ),
                                ),
                                BorderRadius: BorderRadius.circular(20),
                                height: 130.sp,
                                width: double.infinity,
                              );
                            },
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            left: 0,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  3,
                                  (index) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1.sp),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor:
                                          controller.onchange == index
                                              ? Colors.green
                                              : Colors.white,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("user")
                  .doc(FirebaseAuth.instance.currentUser!.uid)
                  .collection('Order')
                  .where("sellerid",
                      isEqualTo: "${FirebaseAuth.instance.currentUser!.uid}")
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                return SizedBox(
                  height: 400.sp,
                  child: ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (context, index) {
                      var data = snapshot.data!.docs[index];
                      //print("numberofoder${snapshot.data?.docs.length}");
                      return Comman_Container(
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        height: 150.sp,
                        width: 150.sp,
                        child: Image.network(data['image']),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
