import 'package:fashion_seller_hub/Common_screen/Comman_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Help_Screen extends StatefulWidget {
  const Help_Screen({Key? key}) : super(key: key);

  @override
  State<Help_Screen> createState() => _Help_ScreenState();
}

class _Help_ScreenState extends State<Help_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff40916C),
        title: Text(
          "Listing Helps",
          style: TextStyle(fontFamily: "JB1"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                text: "How does the listing become inactive?",
                fontFamily: "P1",
                fontSize: 13.sp,
              ),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Seller can choose to change the status of listing from listing details page and make it inactive..",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How does the listing become blocked?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Comman_Text(
                  text:
                      "NestIn can block few products for reasons which can be viewed in the listing card view.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How does the listing become ready for activation?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Products which were blocked earlier by NestIn and now available for activation. You can make these listings live by changing the listing status to active.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How does listing become archived?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Either Seller or Fashion can archive listings. The reasons can be seen in the Listings Summary section.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How can I find a product/listing?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "If you know the product title, SKU or FSN ID, you can search through the search bar or you can go the individual status like Active, Inactive and filter on the basis of Brand, Price etc",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How to Delete Listing?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Comman_Text(
                  text:
                      "You can't delete a listing. However, you can archive one listing. To do that, please go to the listing detail page and change the listing status to archived.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text:
                      "Why are listings not visible on the Fashion Hub Website?",
                  fontFamily: "P1",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Comman_Text(
                  text:
                      "If your active listing is not appearing on the official website, please check the following: A) Your product is available and not out of stock B) Check in the manage profile section in the App if the status of your seller account is 'active'. If both these reasons are not applicable to you, then please raise a ticket with our seller support team and we will help you out.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "Listing related queries",
                  color: Colors.indigo.shade500,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),
              SizedBox(
                height: 10.sp,
              ),
              Comman_Text(
                  text: "How to do single listing?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Comman_Text(
                  text:
                      "Listing your products is easy and you can follow the simple steps mentioned below to create a single listing.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Step:1 Go to Listings in the Main menu and select Add Listings button on right bottom corner",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Step:2 Select Add Listing on Fashion Hub click on Create new listing on the bottom",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Step:3 We have defined a path to help you select the right vertical. Select the 'Category', 'Sub-Category' and 'Vertical' that you wish to list your product under.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Step:4 Update your Brand name to check the availability of the Brand name",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Step:5 Update the product attributes, upload images of your product and click on 'Send to QC'",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "We will have your listing created as soon as the details you have provided are successfully verified by our Quality Check team.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Note The quality check process will take up to 3 days.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How to do bulk listing?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Bulk listing creation is not available on Seller mobile App. Please login to www.seller.NestIn.com to do bulk listing.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "What all can I do/not do from Mobile App?",
                  color: Colors.indigo.shade500,
                  fontWeight: FontWeight.bold,
                  fontFamily: "P1",
                  fontSize: 14.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "What all things related to product can I edit from Mobile App?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text: "Following items can be edited on the mobile app:",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "1) From Mobile App you would be able to edit all the product details like Price, stock, shipping charges, Tax codes applicable, Procurement SLA, Procurement type etc.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "2) Add new single listings: New single listing can be created through the App for new listings draft state can be edited.",
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontFamily: "JV1",
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "3) Product Images: You can add and edit product images.",
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontFamily: "JV1",
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "4) Catalog Details: All the details in the Catalog section like Size, color, material, etc can be edited. All listings in",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text:
                      "What are all things related to products I can't edit from the Mobile App?",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "P1",
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text: "Following items are not available on the mobile app: ",
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontFamily: "JV1",
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "1) Bulk listing: Creating bulk listings via seller app ",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                text:
                    "2) Product variants: Adding product variants while creating a new listing is not available on app ",
                color: Colors.black,
                fontFamily: "JV1",
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
              ),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "3) FBF Inventory: FBF inventory can't be edited from the App ",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "4) Multi-location inventory: Multi-location inventory also can't be edited from the App",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "Fassured- Meaning, Opt in/Opt out,charges",
                  color: Colors.indigo.shade500,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp),
              SizedBox(
                height: 10.sp,
              ),
              Comman_Text(
                  text: "What is F Assured?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "FAssured is a badge given to seller products based on product ratings and returns performance.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "What are Fassured benefits?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "One of the widely sought after feature by the customers while shopping and sellers have increased conversion for Fassured products",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "When can I become eligible for Fassured ?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "1) This badge is given based on the product performance in Returns and customer ratings. ",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "2) For sellers onboarded to Smart and FBF, this is automatically available.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "What is the Eligibility Criteria for Fasssured?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "1) Customer returns and Product should be below the benchmark set by FashionHub or",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "2) Sellers should be a part of the Smart or FBF program.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text:
                      "What are the shipping charge implications for Fassured?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "The shipping charge to all the customers will be Rs 40 if the total value of FAssured items in an order is less than Rs 500. It will be subsidized to zero if the total value of FAssured items in an order is greater than Rs 500.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "How do I know I am eligible? And how do I opt-in ?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Any seller selling in Smart fulfillment mode or Fulfilled by Flipkart (FBF) would automatically be eligible and as soon as the inventory is inwarded in Smart, the Fassured badge gets applied. For sellers operating by themselves in a non- smart and non-fulfilled by Flipkart (FBF) mode the Fassured eligible listings would appear on Listings Landing page as shown below.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "Pricing and Settlements",
                  color: Colors.indigo.shade500,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text: "What is a Commission Calculator?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "It gives a quick view of commission deductions and settlement value per listing. You can check the settlement value for a particular selling price and vice-versa.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "What is the Shipping Charged to the customer?",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "P1",
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Shipping Charges are the cost used to ship an item, the seller can choose to pass this cost to the customer in the form of shipping fee. Seller can update the fields Local, Zonal And National Shipping Charge To The Buyer in the Pricing section to charge this to buyers.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Comman_Text(
                  text: "What is Usual Price? And how to calculate it?",
                  color: Colors.black,
                  fontFamily: "P1",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
              SizedBox(
                height: 5.sp,
              ),
              Comman_Text(
                  text:
                      "Shipping Charges are the cost used to ship an item, the seller can choose to pass this cost to the customer in the form of shipping fee. Seller can update the fields Local, Zonal And National Shipping Charge To The Buyer in the Pricing section to charge this to buyers.",
                  color: Colors.black,
                  fontFamily: "JV1",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
