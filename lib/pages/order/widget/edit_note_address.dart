import 'package:flutter/material.dart';

class EditNoteAddress extends StatelessWidget {
  const EditNoteAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff9B9B9B)),
              borderRadius: BorderRadius.circular(20)),
          child: const Row(
            children: [
              Icon(Icons.edit_note),
              Text('Edit Address'),
            ],
          ),
        ),
        const SizedBox(width: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff9B9B9B)),
              borderRadius: BorderRadius.circular(20)),
          child: const Row(
            children: [
              Icon(Icons.edit_note),
              Text('Edit Note'),
            ],
          ),
        ),
      ],
    );
  }
}
