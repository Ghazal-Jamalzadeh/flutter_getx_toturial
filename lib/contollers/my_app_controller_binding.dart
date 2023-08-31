import 'package:flutter_getx_toturial/contollers/my_controller.dart';
import 'package:get/get.dart';

class MyAppControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
