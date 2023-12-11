import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/home.dart';
import 'package:dulceria/modules/login/adapters/screens/Login.dart';
import 'package:dulceria/modules/products/adapters/screens/products.dart';
import 'package:flutter/material.dart';

class ProductNavigation extends StatelessWidget {
  const ProductNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input con Botones'),
        ),
        body: Center(
          child: Text('0')
        ),
      ),
    );
  }
}

