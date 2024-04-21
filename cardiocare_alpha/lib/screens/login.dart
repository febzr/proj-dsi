// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final TextEditingController login = TextEditingController();
final TextEditingController senha = TextEditingController();

const usrlogin = 'valdir';
const senhalogin = '123';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Spacer(),

              SizedBox(
                width: 200.0,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  )
                ),
              ),

              SizedBox(
                width: 400.0,
                child: Text(
                  'Olá, seja bem vindo\n de volta, insira seu login e senha.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFFDF4343),
                  )
                ),
              ),

              const SizedBox(height: 30.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Usuário',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
                ),
              ),
              
              const SizedBox(height: 10.0),

              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: login,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              SizedBox(
                width: 300.0,
                child: Text(
                  'Senha',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFFDF4343),
                  ),
                ),
              ),

              const SizedBox(height: 10.0),
              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: senha,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              
              SizedBox(
                width: 180.0,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (login.text == usrlogin && senha.text == senhalogin) {
                      Navigator.pushNamed(context, '/home');
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Erro'),
                            content: const Text('Usuário ou senha inválidos.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xFFDF4343)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  child: const Text('Entrar'),
                ),
              ),

              const SizedBox(height: 20.0),

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFDF4343)),
                ),
                child: const Text('Cadastrar-se'),
              ),

              TextButton(
                onPressed: () {
                  // Implementar a lógica de recuperação de senha aqui
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFDF4343)),
                ),
                child: const Text('Esqueci minha senha'),
              ),

              Spacer(),
              
              Container(
                width: 350.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: SizedBox(
                  child: Image.asset('CardioCare.png'),
                ),
              ),

              Positioned(
                  bottom: 0, left: 0, right: 0, child: Image.asset('Vector.png')),

            ],
          ),
        ),
      ),
    );
  }
}