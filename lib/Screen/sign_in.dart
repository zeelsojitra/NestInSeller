import 'package:fashion_seller_hub/Screen/fancy_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import '../Common_screen/Comman_Container.dart';
import '../Common_screen/Comman_TeextFiled.dart';
import '../Common_screen/Comman_text.dart';
import '../email authantication/EmailAuthService.dart';
import '../helper/variable.dart';
import 'Splash_Screen.dart';
import 'homeScreen.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  String countryCode = "91";
  String countryFlage = "";

  final Email_controler = TextEditingController();
  final Password_controler = TextEditingController();
  int selected = 0;
  bool isLoding = false;
  bool passwordcheck = true;
  List name = [
    'Sign Up',
    'Sign In',
  ];
  final gloablekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Form(
        key: gloablekey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 17.sp,
              ),
              Comman_TexxtFiled(
                controller: Email_controler,
                hinttext: "Enter Email",
                validator: (value) {
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (emailValid) {
                    return null;
                  } else {
                    return "Please enter valid Email Id";
                  }
                },
                onChanged: (value) {
                  gloablekey.currentState!.validate();
                },
                prefixicon: Icon(
                  Icons.email,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              TextFormField(
                validator: (value) {
                  final bool passwordValid = password.hasMatch(value!);

                  if (value.isEmpty) {
                    return "Enter Password";
                  } else if (passwordValid != true) {
                    return "please enter valid password";
                  }
                },
                onChanged: (value) {},
                controller: Password_controler,
                obscureText: passwordcheck,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordcheck = !passwordcheck;
                      });
                    },
                    icon: passwordcheck
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Center(
                child: Comman_Container(
                  ontap: () {
                    print("hello");
                    setState(() {
                      if (gloablekey.currentState!.validate()) {
                        EmailAuthService.LoginUser(
                                password: Password_controler.text,
                                email: Email_controler.text)
                            .then((value) async {
                          if (value != null) {
                            SharedPreferences sh =
                                await SharedPreferences.getInstance();
                            Email_controler.clear();
                            Password_controler.clear();
                            sh
                                .setBool(Splash_ScreenState.KeyValue, true)
                                .whenComplete(
                                  () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen1(),
                                      )),
                                );
                          } else {
                            setState(() {
                              isLoding = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Comman_Text(
                              text: "Invalid Email or Password",
                            )));
                          }
                        });
                      }
                    });
                  },
                  height: 35.sp,
                  width: 140.sp,
                  color: Color(0xff95D5B2),
                  child: Center(
                    child: Comman_Text(
                      text: "Sign In",
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
