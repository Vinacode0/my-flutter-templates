import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:templates/Common/navigationdrawer.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavigationDrawer(),
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
    );
  }
}