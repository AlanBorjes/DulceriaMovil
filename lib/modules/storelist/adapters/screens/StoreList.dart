import 'dart:convert';

import 'package:dulceria/modules/storelist/model/MiDato.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Tiendas'),
              SizedBox(width: 8), // Espacio entre el texto y la imagen
              Image.asset('assets/images/logo-utez.png', width: 30, height: 30)
            ],
          ),
        ),
        body: CardListFromJson(),
      ),
    );
  }
}

class CardListFromJson extends StatelessWidget {
  final String jsonData = '''
  [
    {"titulo": "Título 1", "subtitulo": "Subtítulo 1"},
    {"titulo": "Título 2", "subtitulo": "Subtítulo 2"},
    {"titulo": "Título 3", "subtitulo": "Subtítulo 3"}
  ]
  ''';

  @override
  Widget build(BuildContext context) {
    List<dynamic> data = jsonDecode(jsonData);
    List<MiDato> miListaDeDatos =
        data.map((item) => MiDato.fromJson(item)).toList();

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
                  width: 80, // Ancho de la imagen
                  height: 80, // Alto de la imagen
                ),
                SizedBox(width: 16), // Espacio entre la imagen y la información
                // Información de la tienda a la derecha
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
