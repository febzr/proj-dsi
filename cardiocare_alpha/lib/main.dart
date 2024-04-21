// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/cadastro.dart';

void main() => runApp(const MyApp());

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