import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class MakeOrder extends StatelessWidget {
  const MakeOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backGround,
      appBar: AppBar(
        title: Text('Hacer pedido'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                      backgroundColor: ColorsApp.successColor,
                      radius: 40,
                      child: Icon(
                        Icons.storefront_rounded,
                        color: Colors.white,
                        size: 40,
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre de la tienda',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Calle #numero, colonia c.p., municipio')
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Productos', style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 12,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                            maxWidth: 200), // Ajusta según sea necesario
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Paletas enchiladas',
                                style: TextStyle(fontSize: 20)),
                            Text(
                              'Dulce de caramelo sabor mango con cubierta de chile',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              '\$56.00',
                              style: TextStyle(
                                  color: ColorsApp.successColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/paletas.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
            floatingActionButton: ElevatedButton(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: ColorsApp.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              ),
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 10),
            ),
            child: const Text('Ver pedido', style: TextStyle(fontSize: 20),),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
