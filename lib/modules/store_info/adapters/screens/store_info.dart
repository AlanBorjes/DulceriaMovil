import 'package:flutter/material.dart';
import 'package:dulceria/kernel/colors/colors_app.dart';

class StoreInfo extends StatefulWidget {
  const StoreInfo({Key? key}) : super(key: key);

  @override
  _StoreInfoState createState() => _StoreInfoState();
}

class _StoreInfoState extends State<StoreInfo> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiendas'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: Container(
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
                  child: Center(
                    child: Image.asset(
                      'assets/images/store.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 24),
                        Text('Calle # Colonia, C.P, Municipio'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.credit_card, size: 24),
                        Text('RFC'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, size: 24),
                        Text('Nombre del propietario'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone, size: 24),
                        Text('777-123-45-67'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: 500,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(31, 173, 173, 173),
              ),
              child: Center(
                child: DropdownButton<String>(
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items:
                      <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                          .toList(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(31, 173, 173, 173),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pedido',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 130),
                  Text(
                    'Observaciones',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 500,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(31, 173, 173, 173),
              ),
              child: Center(
                child: DropdownButton<String>(
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items:
                      <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                          .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
