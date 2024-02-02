import 'package:coffee_ap/pages/home/model.dart';
import 'package:flutter/material.dart';

class RatingAndPrice extends StatelessWidget {
  const RatingAndPrice({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('⭐'),
        const SizedBox(width: 5),
        Text(product.price.toString(),
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: 5),
        const Text(
          '(230)',
          style: TextStyle(color: Color(0xff9B9B9B)),
        ),
        const Spacer(),
        Image.asset(
          'assets/icon1.png',
          height: 40,
          width: 40,
        ),
        const SizedBox(width: 5),
        Image.asset(
          'assets/icon2.png',
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}
