import 'package:flutter_getx_toturial/contollers/home_contrroller.dart';
import 'package:flutter_getx_toturial/contollers/my_controller.dart';
import 'package:get/get.dart';

class AllControllersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController()) ;
    Get.lazyPut<HomeController>(() => HomeController()) ;
  }

}