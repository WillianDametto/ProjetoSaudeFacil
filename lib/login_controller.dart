import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const SaudeFacilApp());
}

class SaudeFacilApp extends StatelessWidget {
  const SaudeFacilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class LoginController extends StatefulWidget {
  const LoginController({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List usuarios = [];

  @override
  void initState() {
    super.initState();
    fetchUsuarios();
  }

  fetchUsuarios() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/usuarios'));
    if (response.statusCode == 200) {
      setState(() {
        usuarios = json.decode(response.body);
      });
    } else {
      throw Exception('Falha ao carregar dados');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
      ),
      body: ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(usuarios[index]['nome']),
            subtitle: Text(usuarios[index]['email']),
          );
        },
      ),
    );
  }
}
