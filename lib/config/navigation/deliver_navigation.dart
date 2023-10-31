import 'package:dulceria/modules/deliverMan/adapters/screens/delivery.dart';
import 'package:dulceria/modules/store_info/adapters/screens/store_info.dart';
import 'package:flutter/material.dart';

class DeliverNavigation extends StatelessWidget {
  const DeliverNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/deliver',
      routes: {
        '/deliver': (context) => const Delivery(),
      },
    );
  }
}
