import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png',
                  height: 100), // Adicione o logo aqui
              SizedBox(height: 20),
              const Text(
                'Saúde Fácil',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navegar para a tela principal após o login
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Acessar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Cor do botão
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navegar para a tela de recuperação de senha
                  Navigator.pushNamed(context, '/reset_password');
                },
                child: Text('Recuperar senha'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navegar para a tela de cadastro
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Não tem uma conta? Clique aqui para criar uma'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
