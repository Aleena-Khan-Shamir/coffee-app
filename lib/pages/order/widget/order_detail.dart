import 'package:coffee_ap/pages/home/model.dart';
import 'package:coffee_ap/pages/order/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({
    super.key,
    required this.product,
  });

  final Product product;
  final OrderController orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.09,
      color: Colors.white,
      child: Obx(
        () => Row(
          children: [
            Container(
              height: size.height * 0.07,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(product.imageUrl))),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Text(product.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(product.subtitle,
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => orderController.decrement(),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(), shape: BoxShape.circle),
                      child: const Icon(Icons.remove, color: Colors.black)),
                ),
                const SizedBox(width: 5),
                Text(orderController.item.toString(),
                    style: const TextStyle(color: Colors.black)),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () => orderController.increement(),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(), shape: BoxShape.circle),
                      child: const Icon(Icons.add, color: Colors.black)),
                ),
              ],
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
