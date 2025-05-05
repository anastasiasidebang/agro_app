import 'package:flutter/material.dart';

class PengirimanPage extends StatelessWidget {
  const PengirimanPage({super.key}); // ✅ constructor dengan const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengiriman'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('Halaman Pengiriman'),
      ),
    );
  }
}
