import 'package:coffee_ap/pages/home/controller.dart';
import 'package:coffee_ap/pages/home/model.dart';
import 'package:coffee_ap/pages/home/widget/category_card.dart';
import 'package:coffee_ap/pages/home/widget/img_text.dart';
import 'package:coffee_ap/pages/home/widget/search_profile.dart';
import 'package:coffee_ap/pages/home/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/product_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.41,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.33,
                  color: const Color(0xff131313),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Location',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        NameAndProfileImage(),
                        SizedBox(height: 15),
                        MyTextField(),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
                const ImageWithText(),
              ],
            ),
          ),
          const SizedBox(height: 15),
          CategoryCard(controller: controller),
          Obx(
            () => Expanded(
              child: GridView.builder(
                  itemCount: Product.home
                      .where((product) =>
                          product.category ==
                          controller.category[controller.tabIndex.value])
                      .length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: size.height * 0.33),
                  itemBuilder: (_, index) {
                    final filteredProducts = Product.home.where((product) =>
                        product.category ==
                        controller.category[controller.tabIndex.value]);
                    final product = filteredProducts.elementAt(index);
                    return Hero(
                        tag: product.id, child: ProductCard(product: product));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
