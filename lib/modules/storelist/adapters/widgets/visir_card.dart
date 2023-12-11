import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class CardVisit extends StatelessWidget {
  const CardVisit({
    super.key,
    required this.visitId,
    required this.dayVisit,
    required this.status,
    required this.index,
  });

  final int visitId;
  final String dayVisit;
  final String status;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/store-visit-info', arguments: {'idVisit': visitId});
      },
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: index.isEven ? ColorsApp.primaryColor : ColorsApp.successColor,
                foregroundColor: Colors.white,
                radius: 50,
                child: const Icon(
                  Icons.calendar_month,
                  size: 50,
                ),
              ),
              const SizedBox(height: 8),
               Center(
                  child: Text(
                dayVisit,
                textAlign: TextAlign.center,
              )),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: status != 'Pendiente' ? Colors.green : Colors.amberAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  status,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
