import 'dart:convert';

import 'package:dulceria/modules/storelist/model/MiDato.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StoreListScreen(),
      ),
    );
  }
}

class StoreListScreen extends StatefulWidget {
  @override
  _StoreListScreenState createState() => _StoreListScreenState();
}

class _StoreListScreenState extends State<StoreListScreen> {
  List<MiDato> stores = [];

  @override
  void initState() {
    super.initState();
    fetchStores();
  }

  Future<void> fetchStores() async {
    final response = await http.get(Uri.parse('http://localhost:8090/api/store/'));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      setState(() {
        stores = responseData.map((json) => MiDato.fromJson(json)).toList();
      });
    } else {
      throw Exception('Error al cargar las tiendas :c');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tiendas'),
      ),
      body: ListView.builder(
        itemCount: stores.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(stores[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dueño: ${stores[index].ownerName}'),
                Text('Repartidor: ${stores[index].deliveryPersonName}'),
                Text('Ubicación: ${stores[index].location}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
