import 'package:dulceria/modules/Order/adapters/screens/resumen.dart';
import 'package:dulceria/modules/store_info/adapters/screens/store_info.dart';
import 'package:dulceria/modules/storelist/listsotre.dart';
import 'package:dulceria/modules/visit/visit.dart';
import 'package:flutter/material.dart';

class ListStoreNavigation extends StatelessWidget {
  const ListStoreNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ListStore',
      routes: {
        '/ListStore': (context) => const ListStore(),
        '/store-info': (context) => const StoreInfo(),
        '/store-visit-info' : (context) => const Resumen()
      },
    );
  }
}
