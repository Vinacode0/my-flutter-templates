import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:templates/Common/controller/statecontroller.dart';

import 'package:templates/Common/navigationdrawer.dart';

import '../controllers/home_controller.dart';

class ProfileView extends GetView<HomeController> {
  
StateController scontroller =Get.put(StateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  MyNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
     body:  Container( 
       
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 50, // Adjust the radius as needed
                backgroundImage: AssetImage('image/pic.JPG'), // You can use AssetImage or NetworkImage
              ),
              const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text('username :'),
                  Obx(() => (
                     Text('${scontroller.states!.first.stateName.toString()}')
                  )),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text('email :'),
                  Obx(() => (
                     Text('${scontroller.states!.first.countryName.toString()}')
                  )),
              ],
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const  Text('Mobile :'),
                  Obx(() => (
                     Text('${scontroller.states!.first.stateId.toString()}')
                  )),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: null
                , child: Text('Edit' ,style: TextStyle(color: Colors.black),),
               
                )
              ],
            )
            
           
          ],
         ),
     )
      
  );
  }

}
