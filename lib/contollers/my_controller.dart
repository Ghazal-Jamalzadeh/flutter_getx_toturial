import 'package:flutter_getx_toturial/models/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var student = Student();

  var student2 = Student2(name: 'amir', age: 37).obs;

  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
    student2.update((std) {
      std!.name = std.name.toString().toUpperCase();
    });
  }

  void increment() {
    count++;
  }

  /*  تا قبل اینجا یا متغیر رو ری اکتیو تعریف میکردیم یا کلاس رو. حالا میخوایم یه جور دیگه کار کنیم */
  var age = 12;

  void incrementAge() {
    age++;
    update(); //will update the count on UI witch uses it
  }
}
