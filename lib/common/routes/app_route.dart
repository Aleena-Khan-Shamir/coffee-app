import 'package:coffee_ap/common/routes/route_page.dart';
import 'package:coffee_ap/pages/delivery/index.dart';
import 'package:coffee_ap/pages/detail/index.dart';
import 'package:coffee_ap/pages/home/index.dart';
import 'package:coffee_ap/pages/navigationbar/index.dart';
import 'package:coffee_ap/pages/order/index.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(
        name: Routes.navBar,
        page: () => const BottomNavBarPage(),
        binding: BottomNavBarBindings()),
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBindings()),
    GetPage(
        name: Routes.detail,
        page: () => DetailPage(),
        binding: DetailBindings()),
    GetPage(
        name: Routes.order, page: () => OrderPage(), binding: OrderBindings()),
    GetPage(
        name: Routes.delivery,
        page: () => const DeliveryPage(),
        binding: DeliveryBindings()),
  ];
}
