import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:dulceria/kernel/widgets/number_input.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar producto'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/paletas.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paletas enchiladas',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$56.00',
                    style: TextStyle(
                        color: ColorsApp.successColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Center(
                      child: Text(
                    'Dulce de caramelo sabor mango con cubierta de chile',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  )),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  NumberInputWithButtons(),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: ColorsApp.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    ),
                    child: const Text(
                      'Agreagr \$112.00',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
