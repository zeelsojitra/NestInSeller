import 'package:fashion_seller_hub/helper/variable.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Send_Feedback_screen extends StatefulWidget {
  const Send_Feedback_screen({Key? key}) : super(key: key);

  @override
  State<Send_Feedback_screen> createState() => _Send_Feedback_screenState();
}

bool switcselected = true;
final formkey = GlobalKey<FormState>();

class _Send_Feedback_screenState extends State<Send_Feedback_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff40916C),
        title: coomanAppBar(
          name: "Send Feedback",
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Do you find this app \nUseful?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 30.sp,
                  ),
                  switcselected == true
                      ? Text("Yes",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold))
                      : Text("No",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold)),
                  Switch(
                    activeColor: Color(0xff40916C),
                    value: switcselected,
                    onChanged: (value) {
                      setState(() {
                        switcselected = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How Could We Make This App More Useful",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 18.sp,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Suggestion";
                      }
                    },
                    cursorColor: Colors.grey,
                    maxLines: 5,
                    maxLength: 200,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.sp)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.sp)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.sp)),
                        hintText: "Suggestions.....",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Container(
                              height: 140.sp,
                              width: 140.sp,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Send Feedback",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Thank You For Your Feedback!",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.sp),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "OK",
                                              style: TextStyle(
                                                  color: Color(0xff40916C),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xff40916C),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Send",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
