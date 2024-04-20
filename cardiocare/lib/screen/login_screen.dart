// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cardiocare/components/cc_textfield.dart';




class login extends StatelessWidget {
  
  login({super.key});
  
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      margin: EdgeInsets.only(top: 200),
      child:Form(
        key: _formKey,
        child:Column(
        children: [
          cc_textfield(validador:(value){
            if (value==null || value.isEmpty){
              return'errou';
            }else{
              return null;
            }
          }
          ,hint: 'oxi',label: 'oi',),
          ElevatedButton(onPressed: (){
            if(_formKey.currentState!.validate()){
               ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')));
            }
          }
          , child: Text('ola'))
        ]
      )
    )
    )
    );
  }
}