import 'package:dulceria/modules/home.dart';
import 'package:dulceria/modules/login/adapters/screens/Account.dart';
import 'package:dulceria/modules/login/adapters/screens/Login.dart';
import 'package:dulceria/modules/products/adapters/screens/register_product.dart';
import 'package:flutter/material.dart';

class RegisterProductoNavigation extends StatelessWidget {
  const RegisterProductoNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/registerProduct',
      routes: {
        '/registerProduct': (context) => const RegisterProduct(),
      },
    );
  }
}
