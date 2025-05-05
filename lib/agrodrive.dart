import 'package:flutter/material.dart';

class AgroDrivePage extends StatelessWidget {
  const AgroDrivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/agrodrive.png', height: 250),
          const SizedBox(height: 32),
          Text(
            'AgroDrive',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade900,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'AgroDrive mempermudah pengelolaan distribusi hasil panen kelapa sawit hingga ke pabrik.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
