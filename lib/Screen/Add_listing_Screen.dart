import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import '../Common_screen/Comman_Container.dart';
import '../Common_screen/Comman_TeextFiled.dart';
import '../getx/controller.dart';
import 'homeScreen.dart';

class Add_Product extends StatefulWidget {
  const Add_Product({Key? key}) : super(key: key);

  @override
  State<Add_Product> createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product> {
  String catagoeryValue = "chhattisgarh_dhoti_kurta";
  String SubcatagoeryValue = "";
  List Catagory = [
    "chhattisgarh_dhoti_kurta",
    "chhattisgarh_paghadi",
    "chhattisgarh_saree",
    "Goa_dangar_topi",
    "Goa_kunbi_saree",
    "Goa_pano_bhaju",
    "Gujrat_bandhani",
    "Gujrat_chaniyacoli",
    "Gujrat_ghaghra",
    "Gujrat_kediyu",
    "Gujrat_patola",
    "haryana_dhoti",
    "haryana_ghaghra_choli",
    "haryana_kurta_payjama",
    // "WOMEN",
    // "Womman",
    // "Womman",
    // "Womman",
    // "Womman",
  ];
  // List SubCatagory = [
  //   {
  //     "subcatagory": [
  //       "WesternWear",
  //       "indianWear",
  //       "jewellery",
  //       "FootWear",
  //     ],
  //   },
  //   {
  //     "subcatagory": [
  //       "clothing",
  //       "FootWear",
  //       "Watches",
  //       "Laggage",
  //     ],
  //   },
  //   {
  //     "subcatagory": [
  //       "Boys",
  //       "Girls",
  //       "Babies",
  //       "FootWear",
  //       "Accessories",
  //     ],
  //   },
  //   {
  //     "subcatagory": [
  //       "Boys",
  //       "Girls",
  //       "Babies",
  //       "FootWear",
  //       "Accessories",
  //     ],
  //   },
  //   {
  //     "subcatagory": [
  //       "Sofa",
  //       "BedSheets & more",
  //       "Lighting",
  //       "Wallpaper Stickers",
  //       "Home Furnishing",
  //       "Home Tools",
  //     ],
  //   },
  //   {
  //     "subcatagory": [
  //       "SkinCare",
  //       "HairCare",
  //       "Mackup",
  //       "Fragrances",
  //       "Men's Grooming",
  //       "Women's Hygiene",
  //     ],
  //   },
  //   {
  //     "subcatagory": [
  //       "HeadPhone",
  //       "Cameras",
  //       "Power-bank",
  //       "Speakers",
  //       "Mobile Covers",
  //       "Tv",
  //       "Smart Phone",
  //     ],
  //   },
  // ];

  File? image;
  bool isLoding = false;
  Controller pi = Get.put(Controller());
  final product_name = TextEditingController();
  final product_price = TextEditingController();
  final product_categories = TextEditingController();
  final product_stock = TextEditingController();
  final product_details = TextEditingController();
  final Formkey = GlobalKey<FormState>();
  ImagePicker picker = ImagePicker();
  PickImage(ImageSource imageSource) async {
    final file = await picker.pickImage(source: imageSource);

    if (file != null) {
      setState(() {
        image = File(file.path);
      });
    }
  }

  Future<String?> uplodeImage() async {
    try {
      await FirebaseStorage.instance
          .ref('${product_name.text}')
          .putFile(image!);
      final url = await FirebaseStorage.instance
          .ref('${product_name.text}')
          .getDownloadURL();
      return url;
    } on FirebaseException catch (e) {
      print("Firebase Storage ==>>${e.message}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff40916C),
        leading: InkResponse(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Add Product",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: Formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                GestureDetector(
                  onTap: () {
                    PickImage(ImageSource.gallery);
                  },
                  child: Container(
                    color: Colors.grey,
                    child: image == null
                        ? Icon(Icons.camera)
                        : Image.file(
                            image!,
                            fit: BoxFit.cover,
                          ),
                    height: 150.sp,
                    width: 150.sp,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Comman_TexxtFiled(
                  controller: product_name,
                  keyboardType: TextInputType.text,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Please Enter Name";
                    }
                  },
                  hinttext: "Enter Product Name",
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Comman_TexxtFiled(
                  controller: product_details,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Please Enter Details";
                    }
                  },
                  hinttext: "Enter Product Details",
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Comman_Container(
                  border: Border.all(color: Colors.black),
                  BorderRadius: BorderRadius.circular(10),
                  height: 55,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp),
                    child: DropdownButton(
                      menuMaxHeight: 220,
                      value: catagoeryValue,
                      onChanged: (value) {
                        setState(() {
                          catagoeryValue = value as String;
                        });
                      },
                      items: List.generate(
                        Catagory.length,
                        (index) => DropdownMenuItem(
                          value: Catagory[index],
                          child: Text(Catagory[index]),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                // Comman_Container(
                //   border: Border.all(color: Colors.black),
                //   BorderRadius: BorderRadius.circular(10),
                //   height: 55,
                //   width: double.infinity,
                //   child: Padding(
                //     padding: EdgeInsets.only(left: 10.sp),
                //     child: DropdownButton(
                //       menuMaxHeight: 220,
                //       value: SubcatagoeryValue,
                //       onChanged: (value) {
                //         setState(() {
                //           SubcatagoeryValue = value as String;
                //         });
                //       },
                //       items: List.generate(
                //         SubCatagory.length,
                //         (index) => DropdownMenuItem(
                //           value: SubCatagory[index]['subcatagory'],
                //           child: Text(Catagory[index]),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10.sp,
                ),
                Comman_TexxtFiled(
                  controller: product_price,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Please Enter Price";
                    }
                  },
                  keyboardType: TextInputType.number,
                  hinttext: "Enter Product Price",
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Comman_TexxtFiled(
                  controller: product_stock,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Please Enter Stock";
                    }
                  },
                  keyboardType: TextInputType.number,
                  hinttext: "Enter Product Stock",
                ),
                SizedBox(
                  height: 10.sp,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                GestureDetector(
                  onTap: () async {
                    if (Formkey.currentState!.validate()) {
                      final imageUrlseller = await uplodeImage();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home_Screen(),
                          ));
                      DocumentReference docRef = FirebaseFirestore.instance
                          .collection("Product")
                          .doc();
                      docRef
                          .set({
                            "image": imageUrlseller ?? '',
                            "product_name": "${product_name.text}",
                            "product_catagory": "${catagoeryValue}",
                            "product_details": "${product_details.text}",
                            "product_price": "${product_price.text}",
                            "product_stock": "${product_stock.text}",
                            "seller_id": FirebaseAuth.instance.currentUser!.uid,
                            "product_id": docRef.id,
                          })
                          .then((value) => print("success"))
                          .catchError((error) {
                            print("an error occured${error}");
                          });
                    }
                  },
                  child: Container(
                    height: 40.sp,
                    width: 120.sp,
                    decoration: BoxDecoration(
                        color: Color(0xff95D5B2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 1)),
                    child: Center(
                        child: Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
