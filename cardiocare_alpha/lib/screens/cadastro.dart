// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cardiocare_alpha/controller/controladorLoginCadastro.dart';

final TextEditingController nome = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController telefone = TextEditingController();
final TextEditingController senha = TextEditingController();

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(31, 133, 133, 133),

      appBar: AppBar(backgroundColor: Colors.transparent),

      body: Center(
        child: Container(
          width: 350.0,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            shrinkWrap: true,
            children: [

              SizedBox(
                child: Image.asset(
                  'companion.png',
                  height: 80.0,
                  width: 80.0,
                  ),
              ),

              SizedBox(
                width: 400.0,
                child: Text(
                  'Cadastro',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  )
                ),
              ),

              SizedBox(
                width: 400.0,
                child: Text(
                  'Preencha os dados solicitados\ncom atenção',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFDF4343),
                  )
                ),
              ),

              Spacer(),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Nome',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232), fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 3.0),

              Container(
                width: 300.0,
                height: 45.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: nome,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Fulano de tal',
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Email',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232), fontWeight:FontWeight.w700),
                ),
              ),

              const SizedBox(height: 3.0),

              Container(
                width: 300.0,
                height: 45.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: email,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'fulano@email.com',
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Telefone',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232), fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 3.0),

              Container(
                width: 300.0,
                height: 45.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: telefone,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(11),
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '(00) 00000-0000',
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Senha',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232), fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 3.0),

              Container(
                width: 300.0,
                height: 45.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
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

                    if (verificaCamposEscritos(nome.text, telefone.text, email.text, senha.text) == false) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Erro'),
                            content: Text('Preencha todos os campos'),
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
                    } else if (verificaEmail(email.text) == false) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Erro'),
                            content: Text('Email inválido'),
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
                    } else if (verificaCamposEscritos(nome.text, telefone.text, email.text, senha.text) == true && verificaEmail(email.text) == true){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Sucesso'),
                            content: Text('Cadastro realizado com sucesso'),
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
                  child: const Text('Cadastrar'),
                ),
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
                    width: 50.0,
                    height: 50.0,
                    ),
                  ),

            ],
          ),
        ),
      ),
    );
  }
}
