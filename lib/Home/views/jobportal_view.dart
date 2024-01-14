import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:templates/Common/navigationdrawer.dart';
import 'package:templates/JobPortal/view/viewtabs.dart';

import '../controllers/home_controller.dart';

class JobPortalView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavigationDrawer(),
      appBar: AppBar(
        title: Text('Job Portal'),
        centerTitle: true,
      ),
      body: TabsView(),
    );
  }
}