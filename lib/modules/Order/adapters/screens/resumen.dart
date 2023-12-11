import 'package:dio/dio.dart';
import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/modules/Order/widgets/product_list_visit.dart';
import 'package:dulceria/modules/storelist/repository/store_repository.dart';
import 'package:flutter/material.dart';

class Resumen extends StatefulWidget {
  const Resumen({super.key});

  @override
  State<Resumen> createState() => _ResumenState();
}

class _ResumenState extends State<Resumen> {
  var infoVisit;
  var visit;
  var products;
  bool isLoading = true;
  late int idVisit;
  double subTotal = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      getIdVisit();
    });
  }

  void getIdVisit() {
    final dynamic rawArguments = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments =
        (rawArguments as Map<String, dynamic>?) ?? {};
    setState(() {
      idVisit = arguments['idVisit'];
    });

    dataVisit();
  }

  Future<void> dataVisit() async {
    try {
      Response response = await StoreRepository().visitInfo(idVisit);
      setState(() {
        infoVisit = response.data['data'];
        visit = response.data['data']['visit'];
        products = response.data['data']['productList'] as List;
        isLoading = false;
        products?.forEach((product) {
          int cantidad = product['cantidad'];
          double price = product['product']['price'];
          subTotal += cantidad * price;
        });
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de la visita'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visita - ' + visit['day_visit'],
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Divider(
                        height: 20, // Altura de la línea
                        thickness: 1, // Grosor de la línea
                        color: Colors.black26, // Color de la línea
                      ),
                    ),
                    const Text('Detalles del pedido',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return productListVisit(
                                cantidad: products[index]['cantidad'],
                                image: products[index]['product']['image'],
                                name: products[index]['product']['name'],
                                price: products[index]['product']['price'],
                              );
                            },
                            itemCount: products == null ? 0 : products.length,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Subtotal',
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '\$$subTotal',
                                style: const TextStyle(
                                    color: ColorsApp.successColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Visibility(
                          visible: infoVisit['observaciones'] != null,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Observaciones',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  infoVisit['observaciones'] ??
                                      '', // Mostrar observaciones si no es null
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/paletas.png',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/paletas.png',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: infoVisit['observaciones'] == null,
                          child: Text('No se registraron incidencias')
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
