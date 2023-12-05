import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _password = TextEditingController(text: '');
  final TextEditingController _username = TextEditingController(text: '');

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
                      _isButtonDisabled = !_formKey.currentState!.validate();
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
                              labelText: 'Nombre de usuario',
                              hintText: 'ejemplo123',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo obligatorio';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            controller: _username,
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
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                            ),
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
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: ElevatedButton(
                            onPressed: _isButtonDisabled
                                ? null
                                : () async {
                                    final String apiUrl =
                                        'http://localhost:8090/api/auth/login/';
                                    final Map<String, dynamic> data = {
                                      'username': _username.text,
                                      'password': _password.text,
                                    };

                                    try {
                                      final response = await http.post(
                                        Uri.parse(apiUrl),
                                        headers: {
                                          'Content-Type': 'application/json',
                                        },
                                        body: jsonEncode(data),
                                      );

                                      if (response.statusCode == 200) {
                                        final Map<String, dynamic>
                                            responseData =
                                            json.decode(response.body);
                                        final String token =
                                            responseData['data']['token'];

                                        await saveTokenToSharedPreferences(
                                            token);

                                        Navigator.pushNamed(context, '/menu');
                                      } else {
                                        print(
                                            'Error en el inicio de sesion: ${response.body}');
                                      }
                                    } catch (error) {
                                      print('Error en la peticion: $error');
                                    }
                                  },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              backgroundColor: const Color(0xFFB640C1),
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Iniciar sesión'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF4B2883),
    );
  }

  Future<void> saveTokenToSharedPreferences(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('jwt_token', token);
  }
}
