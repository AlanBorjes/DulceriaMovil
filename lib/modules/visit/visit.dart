import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/visit/adapters/screens/VisitList.dart';
import 'package:flutter/material.dart';

class Visit extends StatelessWidget {
  const Visit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: VisitList(),
    );
  }
}
