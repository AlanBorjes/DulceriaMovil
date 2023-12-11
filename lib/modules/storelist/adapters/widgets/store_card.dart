import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({
    Key ? key, required this.nameStore, required this.storeAddress, required this.index, required this.idStore
  });

  final int idStore;
  final String nameStore;
  final String storeAddress;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(41),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/store-info', arguments: {'idStore': idStore} );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            color: Colors.white,
            elevation: 0,
            child:  Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.storefront_rounded,
                        color: index.isEven ? ColorsApp.primaryColor : ColorsApp.successColor,
                        size: 60,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        nameStore,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on),
                      Text(storeAddress),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
