import 'package:dulceria/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class NumberInputWithButtons extends StatefulWidget {
  @override
  _NumberInputWithButtonsState createState() => _NumberInputWithButtonsState();
}

class _NumberInputWithButtonsState extends State<NumberInputWithButtons> {
  int value = 0;

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      if (value > 1) {
        value--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(41),
        color: Colors.black12
      ),
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: decrement,
          ),
          SizedBox(
          width: 50,
          child: TextField(
            controller: TextEditingController(text: value.toString()),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none, // Elimina el borde inferior
            ),
          ),
        ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: increment,
          ),
        ],
      ),
    );
  }
}
