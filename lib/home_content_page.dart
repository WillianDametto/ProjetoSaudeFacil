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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromRGBO(230, 240, 240, 1), // Fundo suave
                    borderRadius:
                        BorderRadius.circular(12), // Bordas arredondadas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Sombra suave
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Especialidades',
                      labelStyle:
                          TextStyle(color: Colors.teal[700], fontSize: 14),
                      prefixIcon: const Icon(Icons.medical_services,
                          color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 5),
                    ),
                    dropdownColor: Colors.white,
                    items: ['Fisioterapeuta', 'Nutricionista', 'Fonoaudiólogo']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 240, 240, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Estado',
                      labelStyle:
                          TextStyle(color: Colors.teal[700], fontSize: 14),
                      prefixIcon: const Icon(Icons.place, color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 5),
                    ),
                    dropdownColor: Colors.white,
                    items: ['São Paulo'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 240, 240, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Cidade',
                      labelStyle:
                          TextStyle(color: Colors.teal[700], fontSize: 14),
                      prefixIcon:
                          const Icon(Icons.location_city, color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 5),
                    ),
                    dropdownColor: Colors.white,
                    items: [
                      'São Caetano do Sul',
                      'São Paulo',
                      'São Bernardo do Campo',
                      'Santo André'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 240, 240, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Atendimento',
                      labelStyle:
                          TextStyle(color: Colors.teal[700], fontSize: 14),
                      prefixIcon: const Icon(Icons.home, color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 5),
                    ),
                    dropdownColor: Colors.white,
                    items: ['Domiciliar', 'Consultório'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 240, 240, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Disponibilidade',
                      labelStyle:
                          TextStyle(color: Colors.teal[700], fontSize: 14),
                      prefixIcon:
                          const Icon(Icons.access_time, color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 5),
                    ),
                    dropdownColor: Colors.white,
                    items: ['Manhã', 'Tarde', 'Noite', 'Integral']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 240, 240, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Convênio',
                      labelStyle:
                          TextStyle(color: Colors.teal[700], fontSize: 14),
                      prefixIcon: const Icon(Icons.health_and_safety,
                          color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 5),
                    ),
                    dropdownColor: Colors.white,
                    items: ['Unimed', 'Bradesco Saúde', 'Amil', 'SulAmérica']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
            ],
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(92, 198, 186, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
