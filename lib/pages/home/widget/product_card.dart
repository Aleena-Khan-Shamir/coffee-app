import 'package:coffee_ap/common/routes/route_page.dart';
import 'package:coffee_ap/pages/home/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.detail, arguments: product),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(product.imageUrl))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text('⭐'),
                        const SizedBox(width: 5),
                        Text(
                          product.rating.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Text(product.subtitle,
                  style: const TextStyle(color: Color(0xff9B9B9B))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.snackbar('Added to cart', 'You add ${product.title}');
                    },
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
