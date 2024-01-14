import 'package:get/get.dart';
import 'package:templates/Home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(),
    );
  }
}