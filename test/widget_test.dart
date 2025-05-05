import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:agrotara/app/app_pages.dart';
import 'package:agrotara/app/app_routes.dart';

void main() {
  testWidgets('Go to AgroDrive button exists and navigates correctly', (WidgetTester tester) async {
    // Jalankan aplikasi dengan GetMaterialApp dan routing
    await tester.pumpWidget(GetMaterialApp(
      initialRoute: AppRoutes.mainpage,
      getPages: AppPages.pages,
    ));

    // Pastikan tombol "Go to AgroDrive" ditemukan
    expect(find.text('Go to AgroDrive'), findsOneWidget);

    // Tap tombol dan trigger rebuild
    await tester.tap(find.text('Go to AgroDrive'));
    await tester.pumpAndSettle();

    // Pastikan kita sudah pindah ke halaman AgroDrive
    expect(find.text('AgroDrive'), findsOneWidget); // pastikan ada teks di AgroDrivePage seperti 'AgroDrive'
  });
}
