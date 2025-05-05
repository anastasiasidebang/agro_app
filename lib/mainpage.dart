import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'agrodrive.dart';

class MainpagePage extends StatefulWidget {
  const MainpagePage({super.key});

  @override
  _MainpagePageState createState() => _MainpagePageState();
}

class _MainpagePageState extends State<MainpagePage> {
  int currentPage = 0;

  final String imagePath = 'assets/people.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          children: [
            const Spacer(),
            // Gambar Ilustrasi, ukuran disesuaikan agar sama besar di semua halaman
            Image.asset(
              imagePath,
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),

            // Judul
            const Text(
              'AgroSmart',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A3731),
              ),
            ),
            const SizedBox(height: 20),

            // Deskripsi
            const Text(
              'Meningkatkan Efisiensi, Keberlanjutan, Dan\n'
                  'Transparansi Dalam Industri Kelapa Sawit\n'
                  'Dan Energi Terbarukan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const Spacer(),

            // Indicator + Next Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Bulat (Panah)
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFF159778),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        currentPage++;
                        if (currentPage > 2) {
                          currentPage = 0; // Reset ke halaman pertama
                        }
                      });
                      // Routing ke halaman AgroDrivePage
                      if (currentPage == 2) {
                        Get.to(() => const AgroDrivePage());
                      }
                    },
                  ),
                ),
              ],
            ),
            // Indikator (titik di kiri bawah)
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  ...List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: index == currentPage
                            ? const Color(0xFF159778)
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
