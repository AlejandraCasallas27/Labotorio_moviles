
import 'package:flutter/material.dart';

import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text(
          'Mis conversaciones',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 16),

        ChatTile(
          name: 'Ana Gómez',
          message: '¡Hola! ¿Cómo estás?',
          time: '10:30',
          initials: 'AG',
          unread: 2,
          avatarColor: Color(0xFFEF9A9A),
        ),

        ChatTile(
          name: 'Pedro López',
          message: 'Nos vemos mañana.',
          time: '09:45',
          initials: 'PL',
          unread: 0,
          avatarColor: Color(0xFF90CAF9),
        ),

        ChatTile(
          name: 'María Torres',
          message: 'Te envié la información.',
          time: 'Ayer',
          initials: 'MT',
          unread: 3,
          avatarColor: Color(0xFFCE93D8),
        ),

        ChatTile(
          name: 'Juan Pérez',
          message: 'Muchas gracias por tu ayuda.',
          time: 'Ayer',
          initials: 'JP',
          unread: 0,
          avatarColor: Color(0xFFA5D6A7),
        ),

        ChatTile(
          name: 'Sofía Ramírez',
          message: '¿Terminaste el proyecto?',
          time: 'Lunes',
          initials: 'SR',
          unread: 1,
          avatarColor: Color(0xFFFFCC80),
        ),
      ],
    );
  }
}
