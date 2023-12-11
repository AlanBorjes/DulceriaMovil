import 'dart:convert';

import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/storelist/model/MiDato.dart';
import 'package:dulceria/modules/visit/model/DatoVisit.dart';
import 'package:flutter/material.dart';

class VisitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ColorsApp.backGround,
        body: CardVisitListFromJson(),
      ),
    );
  }
}

class CardVisitListFromJson extends StatelessWidget {
  final String jsonData = '''
  [
    {"titulo": "Título 1", "subtitulo": "Calle #numero, colonia c.p., municipio" ,"date": "12 de diciembre del 2023"},
    {"titulo": "Título 2", "subtitulo": "Calle #numero, colonia c.p., municipio" ,"date": "12 de diciembre del 2023"},
    {"titulo": "Título 3", "subtitulo": "Calle #numero, colonia c.p., municipio" ,"date": "12 de diciembre del 2023"}
  ]
  ''';

  @override
  Widget build(BuildContext context) {
    List<dynamic> data = jsonDecode(jsonData);
    List<DatoVisit> miListaDeDatos =
        data.map((item) => DatoVisit.fromJson(item)).toList();

    return ListView.builder(
      itemCount: miListaDeDatos.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            // Ajusta según tu preferencia
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Color de la sombra
                spreadRadius: 1, // Extensión de la sombra
                blurRadius: 15, // Difuminado de la sombra
                offset: Offset(
                    0, 3), // Desplazamiento de la sombra (horizontal, vertical)
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: ColorsApp.primaryColor,
                    foregroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.storefront_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        miListaDeDatos[index].titulo,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        miListaDeDatos[index].subtitulo,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        miListaDeDatos[index].date,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'Pendiente',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
