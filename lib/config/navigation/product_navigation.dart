import 'package:dulceria/modules/home.dart';
import 'package:dulceria/modules/login/adapters/screens/Login.dart';
import 'package:dulceria/modules/products/adapters/screens/products.dart';
import 'package:flutter/material.dart';

class ProductNavigation extends StatelessWidget {
  const ProductNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/product',
      routes: {'/product': (context) => const Products()},
    );
  }
}
