import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/storelist/adapters/screens/StoreList.dart';
import 'package:flutter/material.dart';

class ListStore extends StatelessWidget {
  const ListStore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: StoreList(),
    );
  }
}
