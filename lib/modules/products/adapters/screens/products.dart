import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Productos'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 173, 173, 173),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/candies.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const Text(
                    'Dulces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Descripción del producto',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '36.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp.primaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: ColorsApp.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
