import 'package:coffee_ap/common/routes/route_page.dart';
import 'package:coffee_ap/pages/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routes/app_route.dart';
import 'common/theme/theme.dart';

void main() {
  runApp(const MyApp());
  Get.put(HomeController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Coffee App',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.themeData,
      initialRoute: Routes.navBar,
      getPages: AppPages.routes,
    );
  }
}
