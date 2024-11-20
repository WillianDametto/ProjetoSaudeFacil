import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/logo_widget.dart';
import 'login_screen.dart';
import 'home_page.dart';
import 'register_screen.dart';
import 'reset_password_screen.dart';

void main() {
  runApp(const SaudeFacilApp());
}

class SaudeFacilApp extends StatelessWidget {
  const SaudeFacilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterScreen(),
        '/reset_password': (context) => ResetPasswordScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LogoWidget(size: 100), // Adicione o logo aqui
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navegar para a tela principal após o login
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Cor do botão
                ),
                child: const Text('Acessar'),
              ),
              TextButton(
                onPressed: () {
                  // Navegar para a tela de recuperação de senha
                  Navigator.pushNamed(context, '/reset_password');
                },
                child: const Text('Recuperar senha'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navegar para a tela de cadastro
                  Navigator.pushNamed(context, '/register');
                },
                child:
                    const Text('Não tem uma conta? Clique aqui para criar uma'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
