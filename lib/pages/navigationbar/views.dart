import 'package:coffee_ap/pages/navigationbar/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/views.dart';

class BottomNavBarPage extends GetView<BottomNavBarController> {
  const BottomNavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              HomePage(),
              Center(child: Text('Wishlist')),
              Center(child: Text('Cart')),
              Center(child: Text('Notification'))
            ],
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            selectedItemColor: const Color(0xffC67C4E),
            currentIndex: controller.tabIndex.value,
            onTap: (value) => controller.changeIndex(value),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: ''),
            ]),
      ),
    );
  }
}
