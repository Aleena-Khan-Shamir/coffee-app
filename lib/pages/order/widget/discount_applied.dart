import 'package:flutter/material.dart';

class DiscountApplied extends StatelessWidget {
  const DiscountApplied({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.08,
        color: Colors.white,
        child: Row(children: [
          const SizedBox(width: 10),
          Image.network('https://cdn-icons-png.flaticon.com/512/272/272535.png',
              height: 15, width: 15, color: const Color(0xffC67C4E)),
          const SizedBox(width: 5),
          const Text('1 Discount is applied '),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 20),
          const SizedBox(width: 10),
        ]));
  }
}
