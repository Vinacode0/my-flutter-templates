import 'package:get/get.dart';

class TabControl extends GetxController {
  var selectedTabIndex = 1.obs;

  void changeTabIndex(int index) {
    selectedTabIndex.value = index;
    update();
  }
}
