import 'package:agrotara/app_agro/notifications.dart';
import 'package:agrotara/registrasi.dart';
import 'package:get/get.dart';
import 'package:agrotara/mainpage.dart';
import 'package:agrotara/agrodrive.dart';
import 'package:agrotara/app/app_routes.dart';
import 'package:agrotara/agroinsight.dart';
import 'package:agrotara/getstarted.dart';
import 'package:agrotara/masuk.dart';
import 'package:agrotara/verifikasi1.dart';
import 'package:agrotara/app_agro/home.dart';
import 'package:agrotara/app_agro/pengiriman.dart';
import 'package:agrotara/app_agro/notifications.dart';
import 'package:agrotara/app_agro/budidaya.dart';
import 'package:agrotara/app_agro/myprofile.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.mainpage,
      page: () => MainpagePage(),
    ),
    GetPage(
      name: AppRoutes.agrodrive,
      page: () => AgroDrivePage(),
    ),
    GetPage(
      name: AppRoutes.agroinsight,
      page: () => AgroInsightPage(),
    ),
    GetPage(
      name: AppRoutes.getstarted,
      page: () => GetStartedPage(),
    ),
    GetPage(
      name: AppRoutes.masuk,
      page: () => MasukPage(),
    ),
    GetPage(
      name: AppRoutes.verifikasi1,
      page: () => OTPVerificationPage(),
    ),
    GetPage(
      name: AppRoutes.registrasi,
      page: () => RegisterPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () =>DashboardPage(),
    ),
    GetPage(
      name: AppRoutes.pengiriman,
      page: () => PengirimanPage(),
    ),
    GetPage(
      name:AppRoutes.notifications,
      page: () => NotificationsPage(),
    ),
    GetPage(
      name: AppRoutes.budidaya,
      page: () => BudidayaPage(),
    ),
    GetPage(
      name: AppRoutes.myprofile,
      page: () => MyProfilePage(),
    ),
  ];
}
