import 'package:flutter/material.dart';

class TotalCash extends StatelessWidget {
  const TotalCash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
              color: const Color(0xffC67C4E),
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            'Cash',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontSize: 12, color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
              color: const Color(0xff9B9B9B).withOpacity(0.3),
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            '543',
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: const BoxDecoration(
              color: Color(0xff9B9B9B), shape: BoxShape.circle),
          child: const Icon(
            Icons.more_horiz,
            size: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
