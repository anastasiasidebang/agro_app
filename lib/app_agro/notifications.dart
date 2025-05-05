import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  void showNotification(BuildContext context, String title, String message) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          const Icon(Icons.notifications, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text('$title: $message'),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showNotification(context, 'Info', 'Ini notifikasi dari sistem!');
          },
          child: const Text('Tampilkan Notifikasi'),
        ),
      ),
    );
  }
}
