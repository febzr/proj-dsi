import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/cadastro': (context) => CadastroPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFF13232))),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Olá, seja bem vindo de volta, insira seu login e senha.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFF13232)),
            ),
          ),
          preferredSize: Size.fromHeight(40),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Usuário',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Senha',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implementar a lógica de autenticação aqui
                },
                child: Text('Entrar'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFF13232))),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Preencha os campos abaixo para se cadastrar.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFF13232)),
            ),
          ),
          preferredSize: Size.fromHeight(40),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nome',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Email',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Telefone',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Senha',
                style: TextStyle(fontSize: 14, color: Color(0xFFF13232)),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDF4343)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implementar a lógica de cadastro aqui
                },
                child: Text('Cadastrar'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
