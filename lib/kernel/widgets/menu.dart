import 'package:dulceria/config/navigation/account_navigation.dart';
import 'package:dulceria/config/navigation/home_navigation.dart';
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
            HomeNavigation(),
            AccountNavigation(),
            VisitNavigation(),
          ],
        ),
        bottomNavigationBar: CustomButtonNavigationTab(
          onItemTapped: _onItemTapped,
          selectedIndex: _selectIndex,
        ));
  }
}
