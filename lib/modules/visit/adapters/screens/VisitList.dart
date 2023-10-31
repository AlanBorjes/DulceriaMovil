import 'dart:convert';

import 'package:dulceria/modules/storelist/model/MiDato.dart';
import 'package:dulceria/modules/visit/model/DatoVisit.dart';
import 'package:flutter/material.dart';

class VisitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CardVisitListFromJson(),
      ),
    );
  }
}

class CardVisitListFromJson extends StatelessWidget {
  final String jsonData = '''
  [
    {"titulo": "Título 1", "subtitulo": "Subtítulo 1" ,"date": "2020-06-08"},
    {"titulo": "Título 2", "subtitulo": "Subtítulo 2" ,"date": "2020-06-08"},
    {"titulo": "Título 3", "subtitulo": "Subtítulo 3" ,"date": "2020-06-08"}
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
        return Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Imagen de la tienda a la izquierda
                Image.asset(
                  'assets/images/tiendaIcon.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 16),
                // Información de la tienda y fecha a la derecha
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      miListaDeDatos[index].titulo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      miListaDeDatos[index].subtitulo,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Fecha: ${miListaDeDatos[index].date}',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
