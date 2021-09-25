import 'package:get/get.dart';
import 'package:get_pet_app/controllers/home_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
   // Get.lazyPut<AccountController>(() => AccountController());
  }
}