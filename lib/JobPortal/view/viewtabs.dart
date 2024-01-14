import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templates/Common/navigationdrawer.dart';
import 'package:templates/JobPortal/controllers/alltabscontrollers.dart';
import 'package:templates/JobPortal/controllers/tabcontroller.dart';

class TabsView extends StatelessWidget {
  TabControl controller = Get.put(TabControl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Center(
          child: GetBuilder<TabControl>(
            builder: (controller) {
              switch (controller.selectedTabIndex.value) {
                case 0:
                  return HomeTab();
                case 1:
                  return ProfileTab();
                case 2:
                  return SettingsTab();
                default:
                  return HomeTab();
              }
            },
          ),
        ),
      ),
      bottomNavigationBar: GetBuilder<TabControl>(
        builder: (controller) => BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.red,
          currentIndex: controller.selectedTabIndex.value,
          onTap: (index) {
            controller.changeTabIndex(index);
          },
          items: [
            _getBarItem(icon: Icons.all_inbox, label: 'All Jobs'),
            _getBarItem(icon: Icons.send, label: 'Applied jobs'),
            _getBarItem(icon: Icons.post_add, label: 'posted jobs'),
          ],
        ),
      ),
    );
  }

  _getBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
