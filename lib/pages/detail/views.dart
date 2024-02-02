import 'package:coffee_ap/pages/detail/controller.dart';
import 'package:coffee_ap/pages/detail/widget/buy_button.dart';
import 'package:coffee_ap/pages/detail/widget/rating_price.dart';
import 'package:coffee_ap/pages/detail/widget/size_of_coffee_cups.dart';
import 'package:coffee_ap/pages/home/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class DetailPage extends GetView<DetailController> {
  DetailPage({super.key});
  final Product product = Get.arguments;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Detail'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart))
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //  image
            Container(
                    height: size.height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(product.imageUrl))))
                .animate()
                .scaleXY(),
            const SizedBox(height: 10),

            // title
            Text(product.title, style: Theme.of(context).textTheme.titleLarge)
                .animate()
                .fade(duration: 400.ms)
                .then(delay: 100.ms)
                .slideX(),
            const SizedBox(height: 5),
            // subtitle
            Text(product.subtitle,
                    style: const TextStyle(color: Color(0xff9B9B9B)))
                .animate()
                .fade(duration: 550.ms)
                .then(delay: 100.ms)
                .slideY(),
            const SizedBox(height: 10),
            // rating and price
            RatingAndPrice(product: product)
                .animate()
                .fade(duration: 700.ms)
                .scaleX(),
            const SizedBox(height: 10),
            // description
            Text('Description', style: Theme.of(context).textTheme.titleLarge)
                .animate()
                .fade(duration: 750.ms)
                .then(delay: 100.ms)
                .slideX(),
            const SizedBox(height: 5),
            // description text
            ReadMoreText(
              product.description,
              trimLines: 3,
              trimMode: TrimMode.Line,
              style: const TextStyle(color: Colors.grey),
              trimCollapsedText: 'Read More',
              trimExpandedText: 'Read less',
              moreStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffC67C4E),
              ),
            ).animate().fade(duration: 900.ms).scale(delay: 600.ms),

            const SizedBox(height: 20),
            // size
            Text('Size', style: Theme.of(context).textTheme.titleLarge)
                .animate()
                .fadeIn(duration: 880.ms)
                .then(delay: 100.ms)
                .slideY(),
            const SizedBox(height: 10),
            // size of coffee cups
            SizeOfCoffeeCups(controller: controller)
                .animate()
                .fade(duration: 900.ms)
                .then(delay: 100.ms)
                .slideX(),
            const SizedBox(height: 40),
            //price and buy button
            BuyNowButton(product: product).animate()
              ..fadeIn().scale().move(delay: 600.ms, duration: 1000.ms)
          ]),
        ),
      ),
    );
  }
}
