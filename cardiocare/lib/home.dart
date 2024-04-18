import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME', style: TextStyle(color: Color(0xFFF13232))),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Bem vindo ao sistema, Valdir!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFF13232)),
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
              const Text(
                'Olá, Valdir!',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Sair'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
