import 'package:coffee_ap/pages/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.05,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.category.length,
          itemBuilder: (_, index) => Obx(
                () => GestureDetector(
                  onTap: () => controller.changeTab(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 10),
                      decoration: BoxDecoration(
                          color: controller.tabIndex.value == index
                              ? const Color(0xffC67C4E)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        controller.category[index],
                        style: TextStyle(
                            color: controller.tabIndex.value == index
                                ? Colors.white
                                : Colors.grey),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
