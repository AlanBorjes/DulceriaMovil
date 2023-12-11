import 'package:dio/dio.dart';
import 'package:dulceria/modules/storelist/adapters/widgets/visir_card.dart';
import 'package:dulceria/modules/storelist/repository/store_repository.dart';
import 'package:flutter/material.dart';
import 'package:dulceria/kernel/colors/colors_app.dart';

class StoreInfo extends StatefulWidget {
  const StoreInfo({Key? key}) : super(key: key);

  @override
  _StoreInfoState createState() => _StoreInfoState();
}

class _StoreInfoState extends State<StoreInfo> {
  var store;
  var visits;
  late int idStore;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      getIdStore();
    });
  }

  void getIdStore() {
    final dynamic rawArguments = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments = (rawArguments as Map<String, dynamic>?) ?? {};
    setState(() {
      idStore = arguments['idStore'];
    });

    datosTienda();
    visitasTienda();
  }

  Future<void> datosTienda() async {
    try {
      Response response = await StoreRepository().storeById(idStore);
      setState(() {
        store = response.data['data'];
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> visitasTienda() async {
    try {
      Response visitsResponse = await StoreRepository().visitsByStore(idStore);
      setState(() {
        visits = visitsResponse.data['data'] as List;
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backGround,
      appBar: AppBar(
        title: Text(store?['name'] ?? 'Loading...'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorsApp.primaryColor,
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.storefront_rounded,
                          color: Colors.white,
                          size: 40,
                        )),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.location_on, size: 24),
                              SizedBox(
                                width: 220,
                                child: Text(
                                  store?['address'] ?? 'N/A',
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.credit_card, size: 24),
                              Text(store?['rfc'] ?? 'N/A'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.person, size: 24),
                              Text(store?['owner']['name'] + ' ' + store?['owner']['lastName'].toString() ?? 'N/A'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.phone, size: 24),
                              Text(store?['owner']['phone'] ?? 'N/A'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: ColorsApp.successColor,
                          radius: 30,
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Repartidor asignado:',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(store?['owner']['name'] + ' ' + store?['owner']['lastName'].toString() ?? 'N/A')
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Visitas',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: visits?.length ?? 0,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 220,
                      ),
                      itemBuilder: (context, index) {
                        return CardVisit(
                          visitId: visits?[index]['id'] ?? 0,
                          dayVisit: visits?[index]['day_visit'] ?? 'N/A',
                          status: visits?[index]['status']['desciprtion'] ?? 'N/A',
                          index: index,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
