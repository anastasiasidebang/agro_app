import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agrotara/app/app_routes.dart';


class GetStartedPage extends StatelessWidget {
  final String backgroundImage = 'assets/pohon.png'; // Gambar jalan sawit
  final String iconImage = 'assets/sawit.png'; // Icon kelapa sawit

  GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A3731),
      body: Stack(
        children: [
          // Gambar Background
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        backgroundImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Layer hijau melengkung di bawah gambar
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Color(0xFF0A3731),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Konten di bawah
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              decoration: const BoxDecoration(
                color: Color(0xFF0A3731),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon bulat
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD5E722),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      iconImage,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Title
                  const Text(
                    'Managemen\nPerkebunan Sawit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Subtitle
                  const Text(
                    'Meningkatkan Efisiensi, Keberlanjutan, Dan\n'
                        'Transparansi Dalam Industri Kelapa Sawit\n'
                        'Dan Energi Terbarukan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman berikutnya
                        Get.toNamed(AppRoutes.masuk); // Sesuaikan dengan route-mu
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF159778),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}