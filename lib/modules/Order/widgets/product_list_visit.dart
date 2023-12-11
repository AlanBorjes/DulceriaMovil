import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class productListVisit extends StatelessWidget {
  const productListVisit({
    super.key, required this.cantidad, required this.image, required this.name, required this.price,
  });

  final int cantidad;
  final String image;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(cantidad.toString()),
              const SizedBox(
                width: 16,
              ),
              Image.network(
                image,
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$$price',
                    style:
                        TextStyle(color: ColorsApp.successColor),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}