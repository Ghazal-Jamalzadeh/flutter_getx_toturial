import 'package:flutter_getx_toturial/contollers/home_contrroller.dart';
import 'package:get/get.dart';

class SecondControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
