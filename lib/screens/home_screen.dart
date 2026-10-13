
import 'package:flutter/material.dart';

import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text(
          '¡Bienvenido a ConnectApp!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 8),

        Text(
          'Descubre publicaciones de nuestra comunidad.',
          style: TextStyle(color: Colors.grey),
        ),

        SizedBox(height: 20),

        PromotionalBanner(),

        SizedBox(height: 24),

        Text(
          'Explora categorías',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 12),

        ImageCarousel(),

        SizedBox(height: 24),

        Text(
          'Publicaciones recientes',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 12),

        PostCard(
          username: 'Laura Martínez',
          initials: 'LM',
          description:
              'Disfrutando de un hermoso día en la naturaleza.',
          imageIcon: Icons.landscape,
          imageColor: Color(0xFF81C784),
        ),

        SizedBox(height: 16),

        PostCard(
          username: 'Carlos Rodríguez',
          initials: 'CR',
          description:
              'Explorando nuevas ideas y proyectos tecnológicos.',
          imageIcon: Icons.computer,
          imageColor: Color(0xFF90CAF9),
        ),
      ],
    );
  }
}
