import 'package:flutter_getx_toturial/models/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var student = Student() ;
  var student2 = Student2(name: 'amir' , age: 37).obs;
   void convertToUpperCase(){
     student.name.value = student.name.value.toUpperCase() ;
     student2.update((std) {
       std!.name = std.name.toString().toUpperCase() ;
     });
   }
}