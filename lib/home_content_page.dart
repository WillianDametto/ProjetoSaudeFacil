import 'package:flutter/material.dart';

class HomeContentScreen extends StatelessWidget {
  const HomeContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(labelText: 'Especialidades'),
            items: ['Fisioterapeuta', 'Nutricionista', 'Fonoaudiólogo']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {},
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(labelText: 'Estado'),
            items: ['São Paulo'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {},
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(labelText: 'Cidade'),
            items: [
              'São Caetano do Sul',
              'São Paulo',
              'São Bernardo do Campo',
              'Santo André'
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {},
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(labelText: 'Atendimento'),
            items: [
              'Domiciliar',
              'Consultório',
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {},
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Dr. Carlos - Fisioterapeuta'),
              subtitle: const Text(
                  'São Caetano do Sul - São Paulo\n15 anos de experiência\nAtendimento: Domiciliar ou Consultório'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Mais Informações'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
