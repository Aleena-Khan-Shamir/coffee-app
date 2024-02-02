import 'package:flutter/material.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Positioned(
      bottom: 0,
      left: 20,
      right: 20,
      child: Container(
        height: size.height * 0.15,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/c4.jpg'))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  'Promo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.black,
                child: Text('Buy one get ',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white)),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.black,
                child: Text(' one FREE',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
