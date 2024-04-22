// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Bem vindo ao sistema, Valdir!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFCD1313),
                    ),
                    child: Center(
                      child: Text(
                        'user',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Valdir Gomes Queiroz',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar',
                  fillColor: const Color(0xFFCD1313),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildRectangle(context, 'Diário de pressão', 0xFFCD1313),
                  SizedBox(width: 10),
                  _buildRectangle(context, 'Remédios', 0xFFCD1313),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildRectangle(context, 'Consumo de água', 0xFFCD1313),
                  SizedBox(width: 10),
                  _buildRectangle(context, 'Dieta', 0xFFCD1313),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width - 32,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFCD1313),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Gráficos',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRectangle(BuildContext context, String text, int color) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 25,
      height: 50,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
