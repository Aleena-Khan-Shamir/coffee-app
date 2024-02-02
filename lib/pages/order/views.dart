import 'package:coffee_ap/pages/home/model.dart';
import 'package:coffee_ap/pages/order/controller.dart';
import 'package:coffee_ap/pages/order/widget/discount_applied.dart';
import 'package:coffee_ap/pages/order/widget/edit_note_address.dart';
import 'package:coffee_ap/pages/order/widget/order_detail.dart';
import 'package:coffee_ap/pages/order/widget/order_type_btn.dart';
import 'package:coffee_ap/pages/order/widget/payment_summary.dart';
import 'package:coffee_ap/pages/order/widget/total_cash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/routes/route_page.dart';

class OrderPage extends GetView<OrderController> {
  OrderPage({super.key});
  final Product product = Get.arguments;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Order'),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderTypeButton(),
              const SizedBox(height: 20),
              Text('Delivery Address',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text('J1 Kpg Suoto',
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 5),
              const Text('Kpg Suoto No. 620,Bilzen,Tanjungbalat',
                  style: TextStyle(color: Color(0xff9B9B9B))),
              const SizedBox(height: 15),
              // edit and note address button
              const EditNoteAddress(),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              // order details
              OrderDetail(product: product),
              const Divider(thickness: 2),
              const SizedBox(height: 20),
              // discount
              DiscountApplied(size: size),
              const SizedBox(height: 20),
              // payment summary
              const PaymentSummary(),
              const SizedBox(height: 10),
              // total cash
              const TotalCash(),
              const SizedBox(height: 20),
              SizedBox(
                height: size.height * 0.07,
                width: size.width,
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.delivery);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text('Order',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
