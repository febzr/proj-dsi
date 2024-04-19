// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cardiocare/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      title: 'Cardiocare',
      home: login()
    );
  }
}
