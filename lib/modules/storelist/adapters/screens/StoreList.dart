import 'package:dio/dio.dart';
import 'package:dulceria/config/dio/module_network.dart';
import 'package:dulceria/modules/storelist/model/MiDato.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CardListFromApi(),
      ),
    );
  }
}

class CardListFromApi extends StatefulWidget {
  @override
  _CardListFromApiState createState() => _CardListFromApiState();
}

class _CardListFromApiState extends State<CardListFromApi> {
  late Dio _dio;
  List<MiDato> miListaDeDatos = [];

  @override
  void initState() {
    super.initState();
    final _dio = NetworkModule().instance;
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await _dio.get('/store/deliver/9');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        setState(() {
          miListaDeDatos = data.map((item) => MiDato.fromJson(item)).toList();
        });
      } else {
        // Manejar error en la respuesta
        print('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      // Manejar excepción
      print('Error en la solicitud: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
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