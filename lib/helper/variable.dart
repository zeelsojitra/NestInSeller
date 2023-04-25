import 'dart:ui';

//color
//color
const Color DarkGreen2 = Color(0xff2D6A4F);
const Color LightGreen1 = Color(0xff95d5d2);
const Color DarkGreen = Color(0xff40916C);
const Color LightGreen = Color(0xff95d5d2);

//image
const String AppLogo = "assets/images/app_logo.png";
const String ThankYou = "assets/images/Thank-You.png";
const SplashAppLogo = "asserts/logo/nestinSplash.png";
const SplashAppLogowhite = "assets/logo/app_white.png";

//lottie image
const String Apple_lottie = "assets/lottie/apple.json";

AppBar coomanAppBar({String? name, List<Widget>? action, bool? centerTitle}) {
  return AppBar(
    title: Text("${name}"),
    centerTitle: centerTitle,
    titleTextStyle: TextStyle(fontFamily: "JS1", fontSize: Get.height * 0.022),
    actions: action,
    backgroundColor: DarkGreen2,
  );
}
