 
//  import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:templates/Common/controller/statecontroller.dart';

// class DropDownView extends StatelessWidget{

//  final DropdownController myController = Get.put(DropdownController());

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return Scaffold(
//         appBar: AppBar(title: Text('My Dropdown')),
//         body: Center(
        
//            child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetBuilder<DropdownController>(
//               builder: (controller) {
//                 return DropdownButton(
//                   items: controller.dropdownItems
//                       .map((item) => DropdownMenuItem(
//                             value: item,
//                             child: Text(item),
//                           ))
//                       .toList(),
//                   onChanged: (selectedItem) {
//                     // Handle dropdown item selection
//                     print('Selected Item: $selectedItem');
//                   },
//                   hint: Text('Select an item'),
//                 );
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => myController.fetchData(),
//               child: Text('Fetch Data'),
//             ),
//           ],
//           ),
//         ),
//       );
//   }
//   }


 
 
 
 
 
 
 
 
 
 