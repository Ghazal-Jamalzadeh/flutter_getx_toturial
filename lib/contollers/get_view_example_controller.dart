import 'package:get/get.dart';

class GetViewExampleController extends GetxController {

  var count = 1000.obs;
  void increment() {
    count++;
  }
}