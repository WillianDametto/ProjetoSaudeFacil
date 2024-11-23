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
            decoration: InputDecoration(labelText: 'Especialidades'),
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
            decoration: InputDecoration(labelText: 'Estado'),
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
            decoration: InputDecoration(labelText: 'Cidade'),
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
            decoration: InputDecoration(labelText: 'Atendimento'),
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
              leading: Icon(Icons.person),
              title: Text('Dr. Carlos - Fisioterapeuta'),
              subtitle: Text(
                  'São Caetano do Sul - São Paulo\n15 anos de experiência\nAtendimento: Domiciliar ou Consultório'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Mais Informações'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
