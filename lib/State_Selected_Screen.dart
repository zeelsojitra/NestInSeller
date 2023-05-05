// import 'package:csc_picker/csc_picker.dart';
// import 'package:fashion_seller_hub/Common_screen/Comman_Container.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import 'Screen/homeScreen.dart';
//
// class State_Selected_screen extends StatefulWidget {
//   const State_Selected_screen({Key? key, title}) : super(key: key);
//
//   @override
//   State<State_Selected_screen> createState() => _State_Selected_screenState();
// }
//
// class _State_Selected_screenState extends State<State_Selected_screen> {
//   /// Variables to store country state city data in onChanged method.
//   String? countryValue = "";
//   String? stateValue = "";
//   String? cityValue = "";
//   final Fromkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     height: 600,
//                     child: Form(
//                       key: Fromkey,
//                       child: Column(
//                         children: [
//                           ///Adding CSC Picker Widget in app
//                           CSCPicker(
//                             ///Enable disable state dropdown [OPTIONAL PARAMETER]
//                             showStates: true,
//
//                             /// Enable disable city drop down [OPTIONAL PARAMETER]
//                             showCities: true,
//
//                             ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
//                             flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
//
//                             ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
//                             dropdownDecoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10)),
//                                 color: Colors.white,
//                                 border: Border.all(
//                                     color: Colors.grey.shade300, width: 2)),
//
//                             ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
//                             disabledDropdownDecoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10)),
//                                 color: Colors.grey.shade300,
//                                 border: Border.all(
//                                     color: Colors.grey.shade300, width: 2)),
//
//                             ///placeholders for dropdown search field
//                             countrySearchPlaceholder: "Country",
//                             stateSearchPlaceholder: "Selecte Your State",
//                             citySearchPlaceholder: "City",
//
//                             ///labels for dropdown
//                             countryDropdownLabel: "*Country",
//                             stateDropdownLabel: "*State",
//                             cityDropdownLabel: "*City",
//
//                             ///Default Country
//                             defaultCountry: CscCountry.India,
//
//                             ///Disable country dropdown (Note: use it with default country)
//                             //disableCountry: true,
//
//                             ///Country Filter [OPTIONAL PARAMETER]
//                             countryFilter: [
//                               CscCountry.India,
//                             ],
//
//                             ///selected item style [OPTIONAL PARAMETER]
//                             selectedItemStyle: TextStyle(
//                               color: Colors.black,
//                               fontSize: 14,
//                             ),
//
//                             ///DropdownDialog Heading style [OPTIONAL PARAMETER]
//                             dropdownHeadingStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.bold),
//
//                             ///DropdownDialog Item style [OPTIONAL PARAMETER]
//                             dropdownItemStyle: TextStyle(
//                               color: Colors.black,
//                               fontSize: 14,
//                             ),
//
//                             ///Dialog box radius [OPTIONAL PARAMETER]
//                             dropdownDialogRadius: 0,
//
//                             ///Search bar radius [OPTIONAL PARAMETER]
//                             searchBarRadius: 10.0,
//
//                             ///triggers once country selected in dropdown
//                             onCountryChanged: (value) {
//                               setState(() {
//                                 ///store value in country variable
//                                 countryValue = value;
//                               });
//                             },
//
//                             ///triggers once state selected in dropdown
//                             onStateChanged: (value) {
//                               setState(() {
//                                 ///store value in state variable
//                                 stateValue = value;
//                               });
//                             },
//
//                             ///triggers once city selected in dropdown
//                             onCityChanged: (value) {
//                               setState(() {
//                                 ///store value in city variable
//                                 cityValue = value;
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     )),
//                 Comman_Container(
//                     ontap: () {
//                       setState(() {
//                         print("${countryValue}");
//                         print("${stateValue}");
//                         print("${cityValue}");
//                         if (countryValue!.isNotEmpty &&
//                             stateValue!.isNotEmpty &&
//                             cityValue!.isNotEmpty) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Home_Screen(),
//                               ));
//                         } else {
//                           print("======> Error ");
//                         }
//                       });
//                     },
//                     child: Center(
//                         child: Text(
//                       "Continue",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15.sp,
//                           color: Colors.white),
//                     ))),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
