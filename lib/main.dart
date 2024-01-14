import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templates/Common/controller/bookcontroller.dart';
import 'package:templates/Common/controller/statecontroller.dart';
import 'package:templates/Home/Routes/app_pages.dart';
import 'package:templates/JobPortal/view/viewtabs.dart';
import 'package:templates/Model/states.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  // This widget is the root of your application.

   //BookController bookcontroller = Get.put(BookController());

   
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
     // home: TabsView()
     
    );
  }
}


