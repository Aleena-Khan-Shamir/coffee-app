import 'package:flutter/material.dart';

class NameAndProfileImage extends StatelessWidget {
  const NameAndProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: size.width / 2.5,
          child: const ExpansionTile(
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            title: Text('Aleena Khan Shamir',
                style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ),
        ),
        Container(
          height: size.height * 0.06,
          width: size.width * 0.12,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'))),
        )
      ],
    );
  }
}
