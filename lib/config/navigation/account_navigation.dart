import 'package:dulceria/modules/storelist/listsotre.dart';
import 'package:dulceria/modules/visit/visit.dart';
import 'package:flutter/material.dart';

class AccountNavigation extends StatelessWidget {
  const AccountNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ListStore',
      routes: {
        '/ListStore': (context) => const ListStore(),
      },
    );
  }
}
