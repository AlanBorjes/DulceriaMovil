import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _password = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _name = TextEditingController(text: '');
  final TextEditingController _phone = TextEditingController(text: '');

  // Variable para almacenar la imagen seleccionada
  dynamic _image;

  // Función para seleccionar una imagen
  Future<void> _pickImage() async {
    // Implementa la lógica para seleccionar una imagen aquí
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar repartidor'),
        backgroundColor: const Color(0xFF4B2883),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xFFB640C1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: _image != null
                            ? CircleAvatar(
                                radius: 48,
                                backgroundImage: _image,
                              )
                            : const Icon(
                                Icons.camera_alt,
                                size: 40,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ),
                ),
                Form(
                  onChanged: () {
                    setState(() {
                      _isButtonDisabled = !_formKey.currentState!.validate();
                    });
                  },
                  key: _formKey,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        // Campo de nombre
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 16, right: 20, left: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Nombre',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15.0),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            controller: _name,
                          ),
                        ),
                        // Campo de correo
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 16, right: 20, left: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Correo electrónico',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 15.0),
                                filled: true,
                                fillColor: Colors.white),
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        // Campo de teléfono
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 16, right: 20, left: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Teléfono',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15.0),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            controller: _phone,
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        // Campo de contraseña
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 16, right: 20, left: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Contraseña',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15.0),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            controller: _password,
                            obscureText: true,
                          ),
                        ),
                        // Campo para repetir contraseña
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 16, right: 20, left: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Repetir Contraseña',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 15.0),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                        // Botón de registro
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/welcome');
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(150, 50),
                                backgroundColor: const Color(0xFF4B2883),
                                foregroundColor: Colors.white),
                            child: const Text('Registrar'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
