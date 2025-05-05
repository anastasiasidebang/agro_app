import 'package:flutter/material.dart';

class BudidayaPage extends StatelessWidget {
  const BudidayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budidaya'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Panduan Budidaya Kelapa Sawit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                '1. Pilih bibit berkualitas tinggi.\n'
                    '2. Persiapkan lahan dengan baik.\n'
                    '3. Gunakan pupuk organik secara teratur.\n'
                    '4. Pantau kondisi tanaman secara rutin.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Contoh data
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.eco, color: Colors.green),
                      title: Text('Tahapan ${index + 1}'),
                      subtitle: const Text('Penjelasan detail tahapan budidaya.'),
                      trailing: IconButton(
                        icon: const Icon(Icons.arrow_forward, color: Colors.green),
                        onPressed: () {
                          // Aksi saat tombol ditekan
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Tahapan ${index + 1} dipilih')),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
