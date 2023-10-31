import 'package:dulceria/kernel/validations/validations.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  bool _isButtomDisabled = true;

  final TextEditingController _password = TextEditingController(text: '');

  final TextEditingController _email = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/images/logoBlanco.png',
                    width: 200,
                    height: 150,
                  ),
                ),
                Form(
                    onChanged: () {
                      setState(() {
                        _isButtomDisabled = !_formKey.currentState!.validate();
                      });
                    },
                    key: _formKey,
                    child: Container(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 15.0),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Correo electrónico',
                                  hintText: 'example@gmail.com',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(34.0))),
                              validator: (value) {
                                RegExp regex = RegExp(AppPatterns.email);
                                if (value == null || value.isEmpty) {
                                  return 'campo obligatorio';
                                } else if (!regex.hasMatch(value)) {
                                  return 'Introduce un correo válido';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: _email,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 15.0),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Contraseña',
                                  hintText: '**********',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(34.0))),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Campo obligatorio';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              controller: _password,
                            ),
                          ),
                          const Center(
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  decorationThickness: 2,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/menu');
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(34.0)),
                                  backgroundColor: const Color(0xFFB640C1),
                                  foregroundColor: Colors.white),
                              child: const Text('Iniciar sesión'),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF4B2883),
    );
  }
}
