import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class About_us_Screen extends StatefulWidget {
  const About_us_Screen({Key? key}) : super(key: key);

  @override
  State<About_us_Screen> createState() => _About_us_ScreenState();
}

class _About_us_ScreenState extends State<About_us_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff40916C),
        title: Text("About Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome To Fashion Hub",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Fashion hub is a Professional E commerce Platform. Here we will only provide you with interesting content that you will enjoy very much. We are committed to providing you the best of E commerce , with a focus on reliability and Shopping . we strive to turn our passion for E commerce into a thriving website. We hope you enjoy our E commerce as much as we enjoy giving them to you.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Fashion hub is a Professional E commerce Platform. Here we will only provide you with interesting content that you will enjoy very much. We are committed to providing you the best of E commerce , with a focus on reliability and Shopping . we strive to turn our passion for E commerce into a thriving website. We hope you enjoy our E commerce as much as we enjoy giving them to you.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Thank you For Visiting Our Site",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Have a great day !",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: Color(0xff40916C)),
              ),
              SizedBox(
                height: 10.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
