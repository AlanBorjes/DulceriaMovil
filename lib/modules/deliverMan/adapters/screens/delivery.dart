import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repartidores'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 173, 173, 173),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp.warningColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre del Repartidor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text('correo@gmail.com',
                          style: TextStyle(fontSize: 14)),
                      const Text('777-123-45-67',
                          style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.store),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 173, 173, 173),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp.warningColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre del Repartidor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text('correo@gmail.com',
                          style: TextStyle(fontSize: 14)),
                      const Text('777-123-45-67',
                          style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.store),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 173, 173, 173),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp.warningColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre del Repartidor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text('correo@gmail.com',
                          style: TextStyle(fontSize: 14)),
                      const Text('777-123-45-67',
                          style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.store),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 173, 173, 173),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp.warningColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre del Repartidor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text('correo@gmail.com',
                          style: TextStyle(fontSize: 14)),
                      const Text('777-123-45-67',
                          style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.store),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 173, 173, 173),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp.warningColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre del Repartidor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text('correo@gmail.com',
                          style: TextStyle(fontSize: 14)),
                      const Text('777-123-45-67',
                          style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.store),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 173, 173, 173),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp.warningColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre del Repartidor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text('correo@gmail.com',
                          style: TextStyle(fontSize: 14)),
                      const Text('777-123-45-67',
                          style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.store),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsApp.primaryColor,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
