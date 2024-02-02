import 'package:coffee_ap/pages/order/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderTypeButton extends StatelessWidget {
  OrderTypeButton({
    super.key,
  });
  final OrderController orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Obx(
      () => GestureDetector(
        onTap: () {
          orderController.changePlayButton();
        },
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: orderController.isPlay.value ? 0 : size.width / 2.1,
              child: Container(
                height: size.height * 0.07,
                width: size.width / 2.5,
                decoration: BoxDecoration(
                    color: const Color(0xffC67C4E),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Container(
              height: size.height * 0.07,
              decoration: BoxDecoration(
                  color: const Color(0xff9B9B9B).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Deliver',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: orderController.isPlay.value
                              ? Colors.white
                              : Colors.black)),
                  Text('Pick Up',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: orderController.isPlay.value
                              ? Colors.black
                              : Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
