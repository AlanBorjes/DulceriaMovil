import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class CustomButtonNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomButtonNavigationTab(
      {Key? key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Visit'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.successColor,
      onTap: onItemTapped,
    );
  }
}
