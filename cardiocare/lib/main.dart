// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home.dart';
import 'cadastroPage.dart';
import 'designGuide.dart';

void main() => runApp(const MyApp());

final TextEditingController login = TextEditingController();
final TextEditingController senha = TextEditingController();
final TextEditingController nome = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController telefone = TextEditingController();
final TextEditingController senhaCadastro = TextEditingController();

const usrlogin = 'valdir';
const senhalogin = '123';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardioCare',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/cadastro': (context) => const CadastroPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  get tituloPrincipal => DesignGuide.tituloPrincipal;
  get subtituloPrincipal => DesignGuide.subtituloPrincipal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('LOGIN',
            style: DesignGuide.tituloPrincipal.copyWith(fontSize: 30.0)),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Olá, seja bem vindo \n de volta, insira seu login e senha.',
              textAlign: TextAlign.center,
              style: DesignGuide.subtituloPrincipal,
            ),
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Usuário',
                style: TextStyle(fontSize: 14, color: Colors.red.shade600),
              ),

              const SizedBox(height: 10.0),

              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade600),
                  borderRadius: BorderRadius.circular(5.0),
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: login,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              const Text(
                'Senha',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),

              const SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: senha,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              ElevatedButton(
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
                ),
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFDF4343)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Cadastrar'),
              ),
              const SizedBox(height: 20.0),
              // Logo no final da tela
              Positioned(
                  bottom: 0, left: 0, right: 0, child: Text('CardioCare')),
            ],
          ),
        ),
      ),
    );
  }
}