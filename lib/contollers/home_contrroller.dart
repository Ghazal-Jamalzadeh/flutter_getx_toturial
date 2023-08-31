import 'package:get/get.dart';

class HomeController extends GetxController {
  //binding
  var countHomeBinding = 300.obs;
  void incrementUsingBinding() {
    countHomeBinding++;
  }
}