import 'package:get/get.dart';
import 'package:templates/Common/bindings/home_binding.dart';
import 'package:templates/Home/views/jobportal_view.dart';
import 'package:templates/Home/views/home_view.dart';
import 'package:templates/Home/views/matrimonial_view.dart';
import 'package:templates/Home/views/profile_view.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
    ),
    GetPage(
      name: _Paths.JOBPORTAL,
      page: () => JobPortalView(),
    ),
    GetPage(
      name: _Paths.MATRIMONAIL,
     page: () => MatrimonialView(),
    ),
  ];
}