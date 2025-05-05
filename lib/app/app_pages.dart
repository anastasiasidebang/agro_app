import 'package:get/get.dart';
import 'package:agrotara/app/app_routes.dart';
import 'package:agrotara/mainpage.dart';
import 'package:agrotara/agrodrive.dart';
import 'package:agrotara/agroinsight.dart';
import 'package:agrotara/getstarted.dart';
import 'package:agrotara/masuk.dart';
import 'package:agrotara/verifikasi1.dart';
import 'package:agrotara/registrasi.dart';
import 'package:agrotara/app_agro/home.dart';
import 'package:agrotara/app_agro/pengiriman.dart';
import 'package:agrotara/app_agro/notifications.dart';
import 'package:agrotara/app_agro/budidaya.dart';
import 'package:agrotara/app_agro/myprofile.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.mainpage,
      page: () => OnboardingPage(),
    ),
    GetPage(
      name: AppRoutes.agrodrive,
      page: () => const AgroDrivePage(), // Tidak perlu onNext di sini
    ),
    GetPage(
      name: AppRoutes.agroinsight,
      page: () => const AgroInsightPage(), // Tidak perlu onNext di sini
    ),
    GetPage(
      name: AppRoutes.getstarted,
      page: () =>  GetStartedPage(),
    ),
    GetPage(
      name: AppRoutes.masuk,
      page: () => const MasukPage(),
    ),
    GetPage(
      name: AppRoutes.verifikasi1,
      page: () => const OTPVerificationPage(),
    ),
    GetPage(
      name: AppRoutes.registrasi,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const DashboardPage(),
    ),
    GetPage(
      name: AppRoutes.pengiriman,
      page: () => const PengirimanPage(),
    ),
    GetPage(
      name: AppRoutes.notifications,
      page: () => const NotificationsPage(),
    ),
    GetPage(
      name: AppRoutes.budidaya,
      page: () => const BudidayaPage(),
    ),
    GetPage(
      name: AppRoutes.myprofile,
      page: () => const MyProfilePage(),
    ),
  ];
}
