import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> category = [
    'Cappuccino',
    'Latte',
    'Machiato',
    'Latte',
    'Machiato',
    'Latte',
  ];
  RxInt tabIndex = 0.obs;
  void changeTab(int index) {
    tabIndex.value = index;
    log(index.toString());
  }
}
