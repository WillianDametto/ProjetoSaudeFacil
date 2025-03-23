import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/logo_widget.dart';

class HomeInformation extends StatelessWidget {
  const HomeInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: const Color(0xFF6ED4C8), // Fundo principal
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho com logo e título
            Row(
              children: [
                LogoWidget(size: 100),
                const SizedBox(width: 10),
                const Text(
                  'Saúde Fácil',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.black),
                  onPressed: () {
                    // Ação ao clicar no ícone de notificações
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Informações principais
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12, // Sombra leve para dar destaque
                    blurRadius: 6,
                    offset: Offset(0, 2), // Posição da sombra
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dr. Carlos - Fisioterapeuta',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('São Caetano do Sul - São Paulo'),
                  const Text('15 anos de experiência'),
                  const Text('Atendimento: Domiciliar ou Consultório'),
                  const Text('Contato: xxxx-xxxx'),
                  const Text('Horários: 7:00 - 14:00'),
                  const SizedBox(height: 16),
                  // Botão de "Agendar Consulta" dentro do Container
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(92, 198, 186, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      // Ação ao clicar no botão
                    },
                    child: const Text(
                      'Agendar Consulta',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // Cor de fundo do container
                borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12, // Sombra leve para dar destaque
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Título do Container',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Este é um container genérico. Você pode adicionar conteúdo personalizado aqui.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            // Ícones simplificados com legendas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconWithLabel(Icons.photo, 'Fotos'),
                _buildIconWithLabel(Icons.video_library, 'Vídeos'),
                _buildIconWithLabel(Icons.feedback, 'Feedbacks'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Método auxiliar para criar ícones com legendas
  Widget _buildIconWithLabel(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.teal),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
