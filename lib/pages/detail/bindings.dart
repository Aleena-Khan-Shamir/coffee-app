import 'package:coffee_ap/pages/detail/index.dart';
import 'package:get/get.dart';

class DetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
