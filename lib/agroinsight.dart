import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agrotara/app/app_routes.dart'; // Menggunakan AppRoutes untuk routing

class AgroInsightPage extends StatefulWidget {
  const AgroInsightPage({Key? key}) : super(key: key);

  @override
  _AgroInsightPageState createState() => _AgroInsightPageState();
}

class _AgroInsightPageState extends State<AgroInsightPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    const String imagePath = 'assets/agroinsight1.png';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 60),

              // Gambar
              Image.asset(
                imagePath,
                height: 250,
              ),
              const SizedBox(height: 40),

              // Judul
              const Text(
                'AgroInsight',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003129),
                ),
              ),
              const SizedBox(height: 20),

              // Deskripsi
              const Text(
                'Meningkatkan Efisiensi, Keberlanjutan, Dan\nTransparansi Dalam Industri Kelapa Sawit\nDan Energi Terbarukan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),

              // Indicator Titik (titik berpindah sesuai dengan currentPage)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: index == currentPage
                            ? const Color(0xFF159A85)
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ],
              ),
              const SizedBox(height: 40),

              // Tombol panah (untuk melanjutkan ke halaman berikutnya)
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      // Berpindah halaman dan indikator titik mengikuti
                      currentPage++;
                      if (currentPage > 2) {
                        currentPage = 0; // Reset ke halaman pertama
                      }
                    });
                    if (currentPage == 2) {
                      Get.toNamed(AppRoutes.getstarted); // Routing ke halaman berikutnya
                    }
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFF159A85),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
