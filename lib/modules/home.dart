import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/forms/adapters/screens/first_form.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: const FirstForm(),
    );
  }
}
