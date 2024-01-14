import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templates/Common/controller/statecontroller.dart';
import 'package:templates/Common/navigationdrawer.dart';

class HomeTab extends StatelessWidget {
  final StateController myController = Get.put(StateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: Obx(() {
          return ListView.builder(
            itemCount: myController.states?.length,
            itemBuilder: (context, index) {
              final state = myController.states![index];
    
              return Card(
                  color: Colors.lightBlue[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text('ID: ${state.stateId}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${state.stateName}'),
                        Text('Email: ${state.countryName}'),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.defaultDialog(
                                 // title: 'this is title',
                                  middleText: 'hehe',backgroundColor: const Color.fromARGB(255, 227, 223, 212)
                                  
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 201, 196, 195),
                                textStyle: const TextStyle(
                                    color: Colors.amber,
                                    fontSize: 17,
                                    fontStyle: FontStyle.italic),
                              ),
                              child: const Text('change name',style: TextStyle(letterSpacing: 2.0),),
                              )
                              ,
                        ),
                      ],
                    ),
                  ));
    
            },
          );
        }),
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavigationDrawer(),
      body: Center(
        child: Text('Profile Tab'),
      ),
    );
  }
}

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Tab'),
    );
  }
}
