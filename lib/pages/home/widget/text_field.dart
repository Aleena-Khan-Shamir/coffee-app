import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.grey.withOpacity(0.4),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(CupertinoIcons.search, color: Colors.white),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: size.height * 0.06,
              width: size.width * 0.12,
              decoration: BoxDecoration(
                  color: const Color(0xffC67C4E),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(Icons.grid_view_outlined, color: Colors.grey),
            ),
          ),
          hintText: 'Search Coffee',
          hintStyle: const TextStyle(color: Color(0xff9B9B9B)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
        ),
      ),
    );
  }
}
