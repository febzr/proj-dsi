// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cardiocare_alpha/controller/controladorLoginCadastro.dart';

final TextEditingController login = TextEditingController();
final TextEditingController senha = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(31, 133, 133, 133),
      
      body: Center(
        child: Container(
          width: 350.0,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
          
              SizedBox(height: 40.0,),
          
              SizedBox(
                child: Image.asset(
                  'heart_bigsize.png',
                  height: 80.0,
                  width: 80.0,
                  fit: BoxFit.contain,
                  ),
              ),
          
              SizedBox(
                width: 200.0,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  )
                ),
              ),
          
              SizedBox(width: 3.0,),
          
              SizedBox(
                width: 400.0,
                child: Text(
                  'Olá, seja bem vindo\n de volta, insira seu login e senha.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xFFDF4343),
                  )
                ),
              ),
          
              const SizedBox(height: 30.0),
          
              SizedBox(
                width: 300.0,
                child: const Text(
                  'Usuário',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232), fontWeight: FontWeight.w700),
                ),
              ),
              
              const SizedBox(height: 3.0),
          
              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(3.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: login,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'fulano@email.com',
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
          
              const SizedBox(height: 10.0),
          
              SizedBox(
                width: 300.0,
                child: Text(
                  'Senha',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: const Color(0xFFDF4343),
                  ),
                ),
              ),
          
              const SizedBox(height: 3.0),
          
              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(3.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: senha,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '*******',
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
          
              const SizedBox(height: 20.0),
              
              SizedBox(
                width: 180.0,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    
                    if (verificaUsuario(login.text, senha.text) == 2) {
                      Navigator.pushNamed(context, '/home');
                    } else if (verificaUsuario(login.text, senha.text) == 1){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Erro'),
                            content: Text('Usuário ou senha incorretos.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (verificaUsuario(login.text, senha.text) == 0) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Erro'),
                            content: Text('Preencha todos os campos.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
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
          
              const SizedBox(height: 15.0),
          
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

              SizedBox(height: 20.0),
              
              Container(
                width: 350.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: SizedBox(
                  child: Image.asset('CardioCare.png'),
                ),
              ),
          
              Positioned(
                  bottom: 0, 
                  left: 0, 
                  right: 0, 
                  child: Image.asset(
                    'Vector.png',
                    height: 50.0,
                    width: 50.0,
                    )
                  ),
          
            ],
          ),
        ),
      ),
    );
  }
}