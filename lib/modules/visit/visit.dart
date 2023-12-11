import 'package:dio/dio.dart';
import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/storelist/repository/store_repository.dart';
import 'package:dulceria/modules/visit/adapters/widgets/visit_card.dart';
import 'package:dulceria/modules/visit/repository/visit_repository.dart';
import 'package:flutter/material.dart';

class Visit extends StatefulWidget {
  const Visit({Key? key}) : super(key: key);

  @override
  State<Visit> createState() => _VisitState();
}

class _VisitState extends State<Visit> {
  var visits;

  @override
  void initState(){
    super.initState();
    obtenerDatos();
  }

  Future<void> obtenerDatos() async {
    Response response = await VisitRepository().getDeliverVisits(2);
    Map result = response.data;
    setState(() {
      visits = response.data['data'] as List;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backGround,
      appBar: AppBar(
        title: const Text('Visitas'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 4),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return VisitCard(store: visits[index]['store']['name'], status: visits[index]['status']['desciprtion'], date: visits[index]['day_visit'], address: visits[index]['store']['address'], index: index,);
          },
          itemCount: visits == null ? 0 : visits.length,
        ),
      ),
    );
  }
}
