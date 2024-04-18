// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';

class SucessoCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro realizado com sucesso!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Seu cadastro foi realizado com sucesso!'),
            TextButton(
              child: Text('Voltar'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}