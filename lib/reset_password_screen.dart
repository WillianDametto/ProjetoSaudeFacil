import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/logo_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar Senha'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoWidget(size: 100), // Adicione o logo aqui
            const SizedBox(height: 20),
            const Text(
              'Saúde Fácil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20, width: 270),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nova Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20, width: 270),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Confirme a Nova Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação do botão Confirmar
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(92, 198, 186, 100),
              ),
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
