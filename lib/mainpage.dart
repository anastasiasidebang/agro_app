import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'agrodrive.dart';
import 'agroinsight.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              _buildPage(
                image: 'assets/people.png',
                title: 'AgroSmart',
                description:
                'Meningkatkan Efisiensi, Keberlanjutan, dan Transparansi Dalam Industri Kelapa Sawit Dan Energi Terbarukan',
              ),
              AgroDrivePage(),
              const AgroInsightPage(), // Tanpa onNext karena navigasi diatur dari luar
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(dotHeight: 8, dotWidth: 8),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (_currentPage < 2) {
            _controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          } else {
            Navigator.pushReplacementNamed(context, '/getstarted');
          }
        },
      ),
    );
  }

  Widget _buildPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 250),
          const SizedBox(height: 32),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade900,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
