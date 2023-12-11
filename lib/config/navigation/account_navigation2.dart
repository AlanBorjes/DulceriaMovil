import 'package:dulceria/modules/Order/adapters/screens/Order.dart';
import 'package:dulceria/modules/home.dart';
import 'package:dulceria/modules/login/adapters/screens/Account.dart';
import 'package:dulceria/modules/login/adapters/screens/Login.dart';
import 'package:flutter/material.dart';

class AccountNavigation extends StatelessWidget {
  const AccountNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/account',
      routes: {
        '/account': (context) => const Order(),
      },
    );
  }
}
