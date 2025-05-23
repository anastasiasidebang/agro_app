import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agrotara/app/app_pages.dart';
import 'package:agrotara/app/app_routes.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agrotara',
      initialRoute: AppRoutes.mainpage,
      getPages: AppPages.pages,
    );
  }
}

