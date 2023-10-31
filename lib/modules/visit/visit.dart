import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/visit/adapters/screens/VisitList.dart';
import 'package:flutter/material.dart';

class Visit extends StatelessWidget {
  const Visit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Tiendas'),
            SizedBox(width: 8), // Espacio entre el texto y la imagen
            Image.asset('assets/images/logo-utez.png', width: 30, height: 30)
          ],
        ),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: VisitList(),
    );
  }
}
