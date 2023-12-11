import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class CustomButtonNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomButtonNavigationTab(
      {Key? key,
      required this.selectedIndex,
      required this.onItemTapped,
      required MaterialColor unselectedItemColor});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Login'),
        BottomNavigationBarItem(icon: Icon(Icons.storefront_rounded), label: 'Tiendas'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Store'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'products'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'StoreInfo'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'RegisterProduct'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'deliver'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Order'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.successColor,
      unselectedItemColor: Colors.deepPurple,
      onTap: onItemTapped,
    );
  }
}
