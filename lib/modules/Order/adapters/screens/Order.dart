import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  _PedidosState createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  String? selectedProduct;
  int? numberOfProducts;
  List<String> productos = ['Opción A', 'Opción B', 'Opción C'];
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedProduct = null;
    selectedDate = null;
    numberOfProducts = 0;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Pedido'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tienda:', style: TextStyle(fontSize: 18.0)),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: DropdownButton<String>(
                        value: selectedProduct,
                        items: [
                          DropdownMenuItem<String>(
                            value: null,
                            child: Text('Seleccione una tienda'),
                          ),
                          ...productos.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedProduct = newValue;
                          });
                        },
                        underline: Container(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Próxima visita',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                      text: selectedDate != null
                          ? formatter.format(selectedDate!)
                          : '',
                    ),
                    validator: (value) {
                      if (selectedDate == null) {
                        return 'Este campo es obligatorio';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Productos:', style: TextStyle(fontSize: 18.0)),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: DropdownButton<String>(
                        value: selectedProduct,
                        items: [
                          DropdownMenuItem<String>(
                            value: null,
                            child: Text('Seleccione un producto'),
                          ),
                          ...productos.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedProduct = newValue;
                          });
                        },
                        underline: Container(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Número de Productos:',
                        style: TextStyle(fontSize: 18.0)),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          numberOfProducts = int.tryParse(value);
                        });
                      },
                    ),
                  ],
                ),
              ),
              // Aquí agregamos un Row con dos columnas
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Comentarios:', style: TextStyle(fontSize: 18.0)),
                        TextFormField(
                          maxLines: 4,
                          // Puedes personalizar más el TextFormField aquí
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Imagen:', style: TextStyle(fontSize: 18.0)),
                        // Aquí puedes agregar un widget de imagen
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  // Redirige a la ruta 'allproducts' al presionar el botón
                  // Navigator.pushNamed(context, '/allproducts');
                },
                child: const Text('Registrar Pedido'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
