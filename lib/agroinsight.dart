import 'package:flutter/material.dart';

class AgroInsightPage extends StatelessWidget {
  const AgroInsightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/agroinsight1.png', height: 250),
          const SizedBox(height: 32),
          Text(
            'AgroInsight',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade900,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Meningkatkan Efisiensi, Keberlanjutan, dan Transparansi Dalam Industri Kelapa Sawit Dan Energi Terbarukan',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
