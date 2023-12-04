import 'package:dulceria/config/navigation/account_navigation.dart';
import 'package:dulceria/config/navigation/account_navigation2.dart';
import 'package:dulceria/config/navigation/deliver_navigation.dart';
import 'package:dulceria/config/navigation/home_navigation.dart';
import 'package:dulceria/config/navigation/login-navigation.dart';
import 'package:dulceria/config/navigation/order_navigation.dart';
import 'package:dulceria/config/navigation/product_navigation.dart';
import 'package:dulceria/config/navigation/register_product_navigation.dart';
import 'package:dulceria/config/navigation/store_info_navigation.dart';
import 'package:dulceria/config/navigation/visit_navigation.dart';
import 'package:dulceria/kernel/widgets/custom_bottom_navigation_tab.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectIndex = 0;
  final homeNavigatorKey = GlobalKey<NavigatorState>();
  final accountNavigatorKey = GlobalKey<NavigatorState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectIndex,
          children: const [
            ListStoreNavigation(), //si
            VisitNavigation(), //si
            //AccountNavigation(),
            //ProductNavigation(),
            StoreInfoNavigation(), //si
            //RegisterProductoNavigation(),
            //DeliverNavigation(),
            //OrderNavigation(),
          ],
        ),
        bottomNavigationBar: CustomButtonNavigationTab(
          onItemTapped: _onItemTapped,
          selectedIndex: _selectIndex,
          unselectedItemColor: Colors.purple,
        ));
  }
}
