import 'package:dio/dio.dart';
import 'package:dulceria/kernel/validations/validations.dart';
import 'package:flutter/material.dart';
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

  Dio _dio = Dio();

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
                                vertical: 10.0,
                                horizontal: 15.0,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Usuario', 
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
                                vertical: 10.0,
                                horizontal: 15.0,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Contraseña',
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
                            onPressed: _isButtonDisabled ? null : _login, 
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 50),
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

  Future<void> _login() async {
    try {
      final response = await _dio.post(
        '/auth/login/',
        data: {
          'username': _username.text,
          'password': _password.text,
        },
      );

      if (response.statusCode == 200) {
        final token = response.data['token'] as String;
        final userId = response.data['user']['id'] as int;

        await _saveUserData(token, userId);

        Navigator.pushReplacementNamed(context, '/menu');
      } else {
        print('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      print('Error en la solicitud: $e');
    }
  }

  //guardar token y id del usuario
  Future<void> _saveUserData(String token, int userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setInt('user_id', userId);
  }
}
