import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/logo_widget.dart';

class ResetEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-mail Recuperação'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoWidget(size: 100), // Adicione o logo aqui
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
              obscureText: true,
            ),
            SizedBox(height: 20),
            /*const TextField(
              decoration: InputDecoration(
                labelText: 'Confirme e-mail',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),*/
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Ação do botão Confirmar
                Navigator.pushNamed(context, '/reset_password');
              },
              child: Text('Confirmar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
