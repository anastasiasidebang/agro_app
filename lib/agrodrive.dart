import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agrotara/agroinsight.dart';

class AgroDrivePage extends StatefulWidget {
  const AgroDrivePage({super.key});

  @override
  _AgroDrivePageState createState() => _AgroDrivePageState();
}

class _AgroDrivePageState extends State<AgroDrivePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Konten Utama
            Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    'assets/agrodrive.png', // Gambar yang sama
                    height: 250, // Ukuran gambar disamakan
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'AgroDrive',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00473E),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Meningkatkan Efisiensi, Keberlanjutan, Dan\nTransparansi Dalam Industri Kelapa Sawit\nDan Energi Terbarukan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),

            // Tombol di kanan bawah
            Positioned(
              bottom: 30,
              right: 30,
              child: FloatingActionButton(
                backgroundColor: const Color(0xFF00866C),
                onPressed: () {
                  Get.to(() => const AgroInsightPage());
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ),
            // Indikator (titik di kiri bawah)
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: [
                  ...List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: index == currentPage
                            ? const Color(0xFF00866C)
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
