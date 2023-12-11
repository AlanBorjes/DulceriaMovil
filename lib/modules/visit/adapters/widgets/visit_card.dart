import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class VisitCard extends StatelessWidget {
  const VisitCard({
    super.key, required this.store, required this.status, required this.date, required this.address, required this.index,
  });

  final String store;
  final String status;
  final String date;
  final String address;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Ajusta según tu preferencia
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Color de la sombra
            spreadRadius: 1, // Extensión de la sombra
            blurRadius: 15, // Difuminado de la sombra
            offset: Offset(
                0, 3), // Desplazamiento de la sombra (horizontal, vertical)
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: index.isEven ? ColorsApp.primaryColor : ColorsApp.successColor,
                foregroundColor: Colors.white,
                radius: 40,
                child: const Icon(
                  Icons.storefront_rounded,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    store,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 230,
                    child: Text(
                      address,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                   date,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}