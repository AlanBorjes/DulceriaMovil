import 'package:dulceria/modules/home.dart';
import 'package:dulceria/modules/login/adapters/screens/Login.dart';
import 'package:flutter/material.dart';

class LoginNavigation extends StatelessWidget {
  const LoginNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {'/login': (context) => Login()},
    );
  }
}
