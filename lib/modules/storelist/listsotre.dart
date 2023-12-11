import 'package:dio/dio.dart';
import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/storelist/adapters/widgets/store_card.dart';
import 'package:dulceria/modules/storelist/repository/store_repository.dart';
import 'package:flutter/material.dart';

class ListStore extends StatefulWidget {
  const ListStore({Key? key}) : super(key: key);

  @override
  State<ListStore> createState() => _ListStoreState();
}

class _ListStoreState extends State<ListStore> {
  var stores;

  @override
  void initState() {
    super.initState();
    obtenerDatos();
  }

  Future<void> obtenerDatos() async {
    Response response = await StoreRepository().getStores(9);
    Map result = response.data;
    setState(() {
      stores = response.data['data'] as List;
      print('imprimiedno stores');
      print(stores);
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backGround,
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Tiendas asignadas', style: TextStyle(color: Colors.white),),
            const Spacer(),// Espacio entre el texto y la imagen
            Image.asset('assets/images/logo-utez.png', width: 30, height: 30)
          ],
        ),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: 
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: ListView.builder(itemBuilder: (BuildContext context, int index) {
              return StoreCard(nameStore: stores[index]['name'], storeAddress: stores[index]['address'], index: index, idStore: stores[index]['id'],);
            },
            itemCount: stores == null ? 0 : stores.length,
            ),
          )
        
    );
  }
}

