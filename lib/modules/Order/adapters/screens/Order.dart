import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumen del pedido'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorsApp.successColor,
                  radius: 40,
                  child: Icon(
                    Icons.storefront_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre de la tienda',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Calle #numero, colonia c.p., municipio',
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.black26,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('2'),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'assets/images/paletas.png',
                        width: 70,
                        height: 70,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paletas enchiladas',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$56',
                            style: TextStyle(color: ColorsApp.successColor),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.close)
                    ],
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
