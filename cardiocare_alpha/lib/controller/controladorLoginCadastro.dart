// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:email_validator/email_validator.dart';

verificaUsuario(nome, senha) {
  if (nome == "valdir" && senha == "123") {
    return true;
  } else {
    return false;
  }
}

verificaCamposEscritos(nome, telefone, email, senha) {
  if (nome.isEmpty || telefone.isEmpty || email.isEmpty || senha.isEmpty) {
    return false;
  } else {
    return true;
  }
}

verificaEmail(email) {
  if (EmailValidator.validate(email)) {
    return true;
  } else {
    return false;
  }
}