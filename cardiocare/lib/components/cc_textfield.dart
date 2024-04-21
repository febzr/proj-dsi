// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class cc_textfield extends StatelessWidget {
  final String? Function(String?) validador;
  final String hint;
  final String label;
  const cc_textfield({super.key,required this.validador, required this.hint,required this.label});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
    width: screenSize.width*0.79,
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[Padding(
        padding: EdgeInsets.only(left:screenSize.height*0.00625,bottom: screenSize.height*0.00625),
        child: Text(label,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'inter',
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 205, 19, 19)
        ),
        )
        ),
        Padding(padding: const EdgeInsets.only(left: 0),
          child:SizedBox(
          height: 60,
          child:TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: hint,
                  contentPadding: EdgeInsets.symmetric(vertical: 60),
                  isDense: true
                  ),
                  validator:validador
                  
                )
                )
                ),
]
      
      
  
)
);
  }
}