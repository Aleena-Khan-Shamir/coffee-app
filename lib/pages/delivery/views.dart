import 'dart:math';

import 'package:flutter/material.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Image.asset(
              'assets/location.png',
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/maps.png',
                  height: size.height * 0.6,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 15),
                const Divider(
                  thickness: 4,
                  indent: 140,
                  endIndent: 140,
                ),
                const SizedBox(height: 5),
                Text('10 minutes left',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Delivery to',
                        style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(width: 5),
                    Text('JI.Kpg Suoto',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 15),
                Image.asset(
                  'assets/stepper.png',
                  height: 5,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/motorbike.png',
                        height: 30,
                        color: const Color(0xffC67C4E),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivered your Order',
                            style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(height: 5),
                        Text(
                            'We delivery your goods to you in\n shortest of time',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.13,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'))),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Johan Hawan',
                            style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(height: 5),
                        Text('Personal Courier',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                    const Spacer(),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.grey,
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
