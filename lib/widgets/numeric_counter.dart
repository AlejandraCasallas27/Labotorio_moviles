
import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() =>
      _NumericCounterState();
}

class _NumericCounterState
    extends State<NumericCounter> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.touch_app,
            size: 55,
            color: Color(0xFF6750A4),
          ),

          const SizedBox(height: 15),

          const Text(
            'Contador de interacciones',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Presiona los botones para modificar el valor.',
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30),

          Text(
            '$counter',
            style: const TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6750A4),
            ),
          ),

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: decrement,
                child: const Icon(Icons.remove),
              ),

              const SizedBox(width: 25),

              ElevatedButton(
                onPressed: increment,
                child: const Icon(Icons.add),
              ),
            ],
          ),

          const SizedBox(height: 20),

          TextButton.icon(
            onPressed: reset,
            icon: const Icon(Icons.refresh),
            label: const Text('Reiniciar contador'),
          ),

          const SizedBox(height: 15),

          Text(
            counter == 0
                ? 'El contador está en cero'
                : 'Has realizado $counter incrementos netos',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
