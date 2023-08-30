import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {

  void incrementCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('pressed counter $counter times ');
    await preferences.setInt('counter', counter);
  }

}