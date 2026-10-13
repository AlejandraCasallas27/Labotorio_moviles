
import 'package:flutter/material.dart';

import '../widgets/numeric_counter.dart';

class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text(
          'Laboratorio interactivo',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 12),

        Text(
          'Experimenta con variables, botones y '
          'actualizaciones de la interfaz.',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),

        SizedBox(height: 30),

        NumericCounter(),
      ],
    );
  }
}
