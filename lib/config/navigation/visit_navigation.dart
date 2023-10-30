import 'package:dulceria/modules/storelist/listsotre.dart';
import 'package:dulceria/modules/visit/visit.dart';
import 'package:flutter/material.dart';

class VisitNavigation extends StatelessWidget {
  const VisitNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ListVisit',
      routes: {
        '/ListVisit': (context) => const Visit(),
      },
    );
  }
}
