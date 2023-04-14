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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "How does the listing become inactive?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Seller can choose to change the status of listing from listing details page and make it inactive..",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How does the listing become blocked?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Flipkart can block few products for reasons which can be viewed in the listing card view.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How does the listing become ready for activation?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Products which were blocked earlier by Flipkart and now available for activation. You can make these listings live by changing the listing status to active.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How does listing become archived?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Either Seller or Fashion can archive listings. The reasons can be seen in the Listings Summary section.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How can I find a product/listing?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "If you know the product title, SKU or FSN ID, you can search through the search bar or you can go the individual status like Active, Inactive and filter on the basis of Brand, Price etc",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How to Delete Listing?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "You can't delete a listing. However, you can archive one listing. To do that, please go to the listing detail page and change the listing status to archived.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "Why are listings not visible on the Fashion Hub Website?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "If your active listing is not appearing on the official website, please check the following: A) Your product is available and not out of stock B) Check in the manage profile section in the App if the status of your seller account is 'active'. If both these reasons are not applicable to you, then please raise a ticket with our seller support team and we will help you out.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "Listing related queries",
                style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "How to do single listing?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Listing your products is easy and you can follow the simple steps mentioned below to create a single listing.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "Step:1 Go to Listings in the Main menu and select Add Listings button on right bottom corner",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "Step:2 Select Add Listing on Fashion Hub click on Create new listing on the bottom",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "Step:3 We have defined a path to help you select the right vertical. Select the 'Category', 'Sub-Category' and 'Vertical' that you wish to list your product under.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "Step:4 Update your Brand name to check the availability of the Brand name",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "Step:5 Update the product attributes, upload images of your product and click on 'Send to QC'",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "We will have your listing created as soon as the details you have provided are successfully verified by our Quality Check team.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Note The quality check process will take up to 3 days.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How to do bulk listing?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Bulk listing creation is not available on Seller mobile App. Please login to www.seller.fashionhub.com to do bulk listing.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What all can I do/not do from Mobile App?",
                style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "What all things related to product can I edit from Mobile App?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Following items can be edited on the mobile app:",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "1) From Mobile App you would be able to edit all the product details like Price, stock, shipping charges, Tax codes applicable, Procurement SLA, Procurement type etc.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "2) Add new single listings: New single listing can be created through the App for new listings draft state can be edited.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "3) Product Images: You can add and edit product images",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "4) Catalog Details: All the details in the Catalog section like Size, color, material, etc can be edited. All listings in",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What are all things related to products I can't edit from the Mobile App?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Following items are not available on the mobile app: ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "1) Bulk listing: Creating bulk listings via seller app ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "2) Product variants: Adding product variants while creating a new listing is not available on app ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "3) FBF Inventory: FBF inventory can't be edited from the App ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "4) Multi-location inventory: Multi-location inventory also can't be edited from the App",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "Fassured- Meaning, Opt in/Opt out,charges",
                style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "What is F Assured?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "FAssured is a badge given to seller products based on product ratings and returns performance.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What are Fassured benefits?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "One of the widely sought after feature by the customers while shopping and sellers have increased conversion for Fassured products",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "When can I become eligible for Fassured?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "1) This badge is given based on the product performance in Returns and customer ratings. ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "2) For sellers onboarded to Smart and FBF, this is automatically available.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What is the Eligibility Criteria for Fasssured?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "1) Customer returns and Product should be below the benchmark set by FashionHub or",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "2) Sellers should be a part of the Smart or FBF program.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What are the shipping charge implications for Fassured?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "The shipping charge to all the customers will be Rs 40 if the total value of FAssured items in an order is less than Rs 500. It will be subsidized to zero if the total value of FAssured items in an order is greater than Rs 500.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "How do I know I am eligible? And how do I opt-in ?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Any seller selling in Smart fulfillment mode or Fulfilled by Flipkart (FBF) would automatically be eligible and as soon as the inventory is inwarded in Smart, the Fassured badge gets applied. For sellers operating by themselves in a non- smart and non-fulfilled by Flipkart (FBF) mode the Fassured eligible listings would appear on Listings Landing page as shown below.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "Pricing and Settlements",
                style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                "What is a Commission Calculator?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "It gives a quick view of commission deductions and settlement value per listing. You can check the settlement value for a particular selling price and vice-versa.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What is the Shipping Charged to the customer?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Shipping Charges are the cost used to ship an item, the seller can choose to pass this cost to the customer in the form of shipping fee. Seller can update the fields Local, Zonal And National Shipping Charge To The Buyer in the Pricing section to charge this to buyers.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "What is Usual Price? And how to calculate it?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Shipping Charges are the cost used to ship an item, the seller can choose to pass this cost to the customer in the form of shipping fee. Seller can update the fields Local, Zonal And National Shipping Charge To The Buyer in the Pricing section to charge this to buyers.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp),
              ),
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
