import 'package:coffee_ap/pages/navigationbar/index.dart';
import 'package:get/get.dart';

class BottomNavBarBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
  }
}
