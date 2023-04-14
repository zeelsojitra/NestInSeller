import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
      appBar: AppBar(
        title: Text("My Product"),
        backgroundColor: DarkGreen,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text("${index + 1}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp)),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 90.sp,
                        width: 90.sp,
                        decoration: BoxDecoration(
                            color: Color(0xff40916C),
                            borderRadius: BorderRadius.circular(10.sp)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),
                          ),
                          Text(
                            "SKU",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),
                          ),
                          Text(
                            "MRP",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),
                          ),
                          Row(
                            children: [
                              Text(
                                "Stock:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                );
              },
              itemCount: 10),
        )
      ]),
    );
  }
}
