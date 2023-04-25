import 'package:get/get.dart';

class Controller extends GetxController {
  bool like_btn = false;
  RxInt selected_drawer = 0.obs;
  RxBool like_btn_details_screen = false.obs;
  int onchange = 0;
  RxInt selected_Screen = 0.obs;
  RxBool signuploder = false.obs;

  setSelectScreen(int value) {
    onchange = value;
    update();
  }

  RxInt On_Bording_onchange = 0.obs;
  List likeList = [];
  bool isLoding = false;
}
