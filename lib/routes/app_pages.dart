import 'package:get/get.dart';
import 'package:get_pet_app/pages/dashboard.dart';
import 'package:get_pet_app/bindings/dashboard_binding.dart';

import 'app_routes.dart';

class AppPages {


  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}