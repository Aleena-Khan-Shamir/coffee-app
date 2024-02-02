import 'package:coffee_ap/pages/delivery/index.dart';
import 'package:get/get.dart';

class DeliveryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryController());
  }
}
