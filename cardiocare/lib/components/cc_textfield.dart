// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class cc_textfield extends StatelessWidget {
  final String? Function(String?) validador;
  final String hint;
  final String label;
  const cc_textfield({super.key,required this.validador, required this.hint,required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text(label),
        Padding(padding: const EdgeInsets.all(1),
          child:TextFormField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: hint,),
                  validator:validador
                )),
]
      
      
  
);
  }
}