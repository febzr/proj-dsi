// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180, // tamanho da appbar
        flexibleSpace: Container(
          color: const Color(0xFFCD1313),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Center(
                      child: Text(
                        //colocar image aqui
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
              SizedBox(height: 2),
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pesquisar',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(31, 133, 133, 133),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFCD1313),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Diário de Pressão',
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: 'Remédios',
            icon: Icon(Icons.medication_liquid),
          ),
          //BottomNavigationBarItem(
          //label: 'Perfil',
          //icon: Icon(Icons.account_circle),
          //),
        ],
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
