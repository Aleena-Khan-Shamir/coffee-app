import 'package:coffee_ap/pages/order/index.dart';
import 'package:get/get.dart';

class OrderBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderController());
  }
}
