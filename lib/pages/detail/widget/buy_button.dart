import 'package:coffee_ap/common/routes/route_page.dart';
import 'package:coffee_ap/pages/home/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Price',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff9B9B9B))),
              const SizedBox(height: 5),
              Text('\$${product.price}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffC67C4E))),
            ],
          ),
          const SizedBox(width: 50),
          Expanded(
              child: SizedBox(
            height: size.height * 0.07,
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.order, arguments: product);
                  Get.snackbar('Added to cart', 'You add ${product.title}');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text('Buy Now',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white))),
          ))
        ],
      ),
    );
  }
}
