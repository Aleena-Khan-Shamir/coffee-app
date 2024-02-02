import 'dart:developer';

import 'package:get/get.dart';

class OrderController extends GetxController {
  final List<String> orderType = ['Delivery', 'Pick Up'];
  RxInt selectedIndex = 0.obs;
  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  RxBool isPlay = true.obs;
  void changePlayButton() {
    isPlay.value = !isPlay.value;
  }

  RxInt item = 1.obs;
  void increement() {
    item++;
  }

  void decrement() {
    if (item > 1) {
      item--;
    }
    log(item.toString());
  }
}
