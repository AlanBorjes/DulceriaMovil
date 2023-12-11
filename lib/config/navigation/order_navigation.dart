import 'package:dulceria/modules/Order/adapters/screens/Order1.dart';
import 'package:dulceria/modules/Order/adapters/screens/make_order.dart';
import 'package:dulceria/modules/deliverMan/adapters/screens/delivery.dart';
import 'package:dulceria/modules/store_info/adapters/screens/store_info.dart';
import 'package:flutter/material.dart';

class OrderNavigation extends StatelessWidget {
  const OrderNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/order',
      routes: {
        '/order': (context) => const MakeOrder(),
      },
    );
  }
}
