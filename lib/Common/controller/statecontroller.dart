
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:templates/Model/states.dart';

class StateController extends GetxController {

  //final RxList<String> dropdownItems = <String>[].obs;

  final RxList<States>? states = <States>[].obs;

 late States state= new States();

    List<String> newlist = [];

@override
  void onInit() {
    print('on in it method called');
    super.onInit();
   fetchData();
  }

  Future<void> fetchData() async {
    final response = await Dio().get('http://localhost:8001/v1/common/states');


    if (response.statusCode == 200) {
      final Map<String, dynamic> data = response.data;

      Data datalist = Data.fromJson(data['data']);

      List<States>? stateslist = datalist.states;
      stateslist?.forEach((element) {
        newlist.add(element.stateName.toString());
        print(element.stateName.toString());
      });
      states?.addAll(datalist.states!);
      print(states!.length);
     
   print(stateslist![0].countryName.toString());
     // dropdownItems.assignAll(newlist);
    } else {
      // Handle error
      print('Error fetching data');
    }
  }
}
