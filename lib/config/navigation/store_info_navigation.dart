import 'package:dulceria/modules/home.dart';
import 'package:dulceria/modules/login/adapters/screens/Account.dart';
import 'package:dulceria/modules/login/adapters/screens/Login.dart';
import 'package:dulceria/modules/store_info/adapters/screens/store_info.dart';
import 'package:flutter/material.dart';

class StoreInfoNavigation extends StatelessWidget {
  const StoreInfoNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/storeInfo',
      routes: {
        '/storeInfo': (context) => const StoreInfo(),
      },
    );
  }
}
