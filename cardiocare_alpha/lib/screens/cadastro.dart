// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                width: 400.0,
                child: Text(
                  'Cadastro',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
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
                    fontSize: 14,
                    color: Color(0xFFDF4343),
                  )
                ),
              ),

              Spacer(),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Nome',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
                ),
              ),

              const SizedBox(height: 5.0),

              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Email',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
                ),
              ),

              const SizedBox(height: 5.0),

              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Telefone',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
                ),
              ),

              const SizedBox(height: 5.0),

              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              SizedBox(
                width: 300.0,
                child: const Text(
                  'Senha',
                  style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
                ),
              ),

              const SizedBox(height: 5.0),

              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
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
                    // Implementar a lógica de cadastro aqui
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

              Spacer(),
              // Logo no final da tela
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
