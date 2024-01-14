import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templates/Home/Routes/app_pages.dart';



class MyNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        child: ListView(
          children: [
            buildDrawerHeader(),
            Divider(
              color: Colors.grey,
            ),
            buildDrawerItem(
              icon: Icons.person,
              text: "Profile",
              onTap: () => navigate(0),
              tileColor: Get.currentRoute == Routes.PROFILE ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.PROFILE
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
              icon: Icons.local_mall_sharp,
              text: "Job Portal",
              onTap: () => navigate(1),
              tileColor: Get.currentRoute == Routes.JOBPORTAL ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.JOBPORTAL
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
                icon: Icons.supervised_user_circle,
                text: "Matrimonial",
                onTap: () => navigate(2),
                tileColor: Get.currentRoute == Routes.MATRIMONAIL ? Colors.blue : null,
                textIconColor: Get.currentRoute == Routes.MATRIMONAIL
                    ? Colors.white
                    : Colors.black),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
     
      accountName: Text("Vinod Choudhary"),
      accountEmail: Text("vinodchoudhary@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('image/logo.jpg'),
      ),
      currentAccountPictureSize: Size.square(72),
     otherAccountsPictures: [CircleAvatar(
        backgroundImage: AssetImage('image/app_logo.png'),
      ),
      
     ],
     otherAccountsPicturesSize: Size.square(90),
    );
  }

  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(Routes.PROFILE);
    }
     else if (index == 1) {
      Get.toNamed(Routes.JOBPORTAL);
    }
     if (index == 2) {
      Get.toNamed(Routes.MATRIMONAIL);
    }
  }
}