import 'package:dulceria/kernel/widgets/menu.dart';
import 'package:dulceria/kernel/widgets/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => Splash(), '/menu': (context) => Menu()},
    );
  }
}
