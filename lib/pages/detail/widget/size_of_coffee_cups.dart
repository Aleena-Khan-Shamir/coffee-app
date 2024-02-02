import 'package:coffee_ap/pages/detail/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeOfCoffeeCups extends StatelessWidget {
  const SizeOfCoffeeCups({
    super.key,
    required this.controller,
  });

  final DetailController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.size.length,
          itemBuilder: (_, index) => Obx(
                () => GestureDetector(
                  onTap: () => controller.changeIndex(index),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 42,
                      ),
                      decoration: BoxDecoration(
                          color: controller.selectedIndex.value == index
                              ? const Color(0xffC67C4E).withOpacity(0.1)
                              : null,
                          border: Border.all(
                              color: controller.selectedIndex.value == index
                                  ? const Color(0xffC67C4E)
                                  : const Color(0xff9B9B9B)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(controller.size[index]),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
