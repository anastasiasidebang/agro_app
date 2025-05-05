import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green.shade700,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping), label: 'Kirim'),
          BottomNavigationBarItem(icon: Icon(Icons.factory), label: 'Pabrik'),
          BottomNavigationBarItem(icon: Icon(Icons.eco), label: 'Tanam'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/home/profile.png"),
                    radius: 24,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Good Morning 🌤️", style: TextStyle(fontSize: 14)),
                      Text("Farmer Yonatan", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),

              const Text("Harga Sawit Hari Ini", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 4),
              const Text("Rp. 1.232.500,00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              const SizedBox(height: 16),

              // Grafik Harga Sawit
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(12),
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 1000),
                          FlSpot(1, 1100),
                          FlSpot(2, 1150),
                          FlSpot(3, 1200),
                          FlSpot(4, 1232.5),
                        ],
                        isCurved: true,
                        color: Colors.green.shade600,
                        barWidth: 3,
                        isStrokeCapRound: true,
                        dotData: FlDotData(show: true),
                        belowBarData: BarAreaData(
                          show: true,
                          color: Colors.green.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Weather Card
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF0A6240), Color(0xFF198754)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Jakarta Selatan, 5 Maret 2025", style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 8),
                    Text("27°C", style: TextStyle(fontSize: 28, color: Colors.white)),
                    Text("Humidity 83%", style: TextStyle(color: Colors.white70)),
                    Divider(color: Colors.white30),
                    Text("Hari ini cocok untuk menanam bibit sawit",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Production & Sales
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.green.shade300),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: const [
                            Text("Hasil Produksi", style: TextStyle(fontWeight: FontWeight.w500)),
                            SizedBox(height: 4),
                            Text("1000 TON", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Container(width: 1, color: Colors.green.shade300, height: 48),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: const [
                            Text("Hasil Penjual", style: TextStyle(fontWeight: FontWeight.w500)),
                            SizedBox(height: 4),
                            Text("440 TON", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Recommendations
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Rekomendasi Pabrik", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Semua", style: TextStyle(color: Colors.green)),
                ],
              ),
              const SizedBox(height: 12),

              // Factory list
              ...List.generate(5, (index) {
                return ListTile(
                  leading: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  title: const Text("PT Raharja Abadi"),
                  subtitle: const Text("Top production • Verified • 1 km"),
                  trailing: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Kirim"),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 4),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
