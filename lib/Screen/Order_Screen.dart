import 'package:fashion_seller_hub/Screen/Order_Completed_Sceen.dart';
import 'package:fashion_seller_hub/Screen/Order_Pending_Screen.dart';
import 'package:fashion_seller_hub/Screen/Order_UpcominScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Order_screen extends StatefulWidget {
  const Order_screen({Key? key}) : super(key: key);

  @override
  State<Order_screen> createState() => _Order_screenState();
}

class _Order_screenState extends State<Order_screen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int Tabselected = 0;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int Radioselected = 0;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                        width: 120.sp,
                        height: 210.sp,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text("Select Vendor",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Divider(
                              color: Colors.grey.shade300,
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Row(
                              children: [
                                Radio(
                                  activeColor: Color(0xff2D6A4F),
                                  value: 0,
                                  groupValue: Radioselected,
                                  onChanged: (value) {
                                    setState(() {
                                      Radioselected = value!;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name: Ekart Logistics",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp)),
                                    Text("Orders:5",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp)),
                                    Text("Pickup",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp)),
                                    Text("Slot : Not Scheduled",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp)),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.grey.shade200,
                              thickness: 1,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40.sp,
                                    width: 128.sp,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.grey)),
                                    child: Center(
                                        child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: Color(0xff40916C),
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      height: 40.sp,
                                      width: 128.sp,
                                      decoration: BoxDecoration(
                                          color: Color(0xff40916C),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        "Confirm",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.save_alt)),
            PopupMenuButton(
              icon: Icon(Icons.import_export),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  // row has two child icon and text.
                  child: Row(
                    children: [Text("Order Date-Latest First")],
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  // row has two child icon and text.
                  child: Row(
                    children: [Text("Dispatch Date-immediate First")],
                  ),
                ),
              ],
            ),
          ],
          backgroundColor: Color(0xff40916C),
          title: Text(
            "Orders",
          )),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 55.sp,
                width: double.infinity,
                color: Color(0xff40916C),
              ),
              Positioned(
                right: 10.sp,
                child: SizedBox(
                  width: 280.sp,
                  height: 40.sp,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      cursorColor: Colors.grey,
                      onTap: () {},
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.white54, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.white54, width: 1)),
                          hintText: "Enter Oder ID/item ID",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 18)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TabBar(
            controller: tabController,
            labelColor: Color(0xff40916C),
            indicatorColor: Color(0xff40916C),
            tabs: [
              Tab(
                text: "UPCOMING",
              ),
              Tab(
                text: "PENDING",
              ),
              Tab(
                text: "COMPLETED",
              ),
            ],
            onTap: (value) {
              setState(() {
                Tabselected = value;
              });
            },
          ),
          SizedBox(
            height: 511.sp,
            child: TabBarView(
              children: [
                Order_Upcoming_Screen(),
                Order_Pending_Screen(),
                Order_Completed_screen(),
              ],
              controller: tabController,
            ),
          ),
        ],
      ),
    );
  }
}
