import 'dart:convert';

import 'package:dulceria/modules/visit/model/DatoVisit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VisitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: VisitListScreen(),
      ),
    );
  }
}

class VisitListScreen extends StatefulWidget {
  @override
  _VisitListScreenState createState() => _VisitListScreenState();
}

class _VisitListScreenState extends State<VisitListScreen> {
  List<DatoVisit> visits = [];

  @override
  void initState() {
    super.initState();
    fetchVisits();
  }

  Future<void> fetchVisits() async {
    final response = await http.get(Uri.parse('http://localhost:8090/api/visits/'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      setState(() {
        visits = data.map((visit) => DatoVisit.fromJson(visit)).toList();
      });
    } else {
      throw Exception('Error al cargar las visitas :c');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Visitas'),
      ),
      body: ListView.builder(
        itemCount: visits.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(visits[index].storeName),
            subtitle: Text(
                'Fecha: ${visits[index].date}\nStatus: ${visits[index].status}'),
          );
        },
      ),
    );
  }
}
