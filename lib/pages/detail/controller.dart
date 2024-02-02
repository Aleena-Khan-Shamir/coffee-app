import 'dart:developer';

import 'package:get/get.dart';

class DetailController extends GetxController {
  RxInt selectedIndex = 0.obs;
  void changeIndex(int index) {
    selectedIndex.value = index;
    log(selectedIndex.value.toString());
  }

  final List<String> size = ['S', 'M', 'L'];
}
