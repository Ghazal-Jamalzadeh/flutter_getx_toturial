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

  //GetBuilder
  /*
   تو مثال ها قبلی متغیرها رو از نوع ذی اکتیو تعریف میکردیم
   در این روش اصلا نیازی نیست که متغیر از نوع ری اکتیو تعریف شود
   */
  var age = 12;

  void incrementAge() {
    age++;
    update(); //will update the count on UI witch uses it
  }

  //Controller Life Cycle
  int number = 0;

  void incrementNumberEvery5Seconds() {
    Future.delayed(const Duration(seconds: 5), () {
      number++;
      update();
    });
  }

  void cleanUpTask() {
    print('clean up task');
  }

  //better approach
  @override
  void onInit() {
    print('init called ');
    incrementNumberEvery5Seconds();
    super.onInit();
  }

  @override
  void onClose() {
    print('close called');
    cleanUpTask();
    super.onClose();
  }

  // Unique id
  int id = 1000;

  void incrementId() {
    id++;
    update(["myUniqueId"]);
    /*نکته : الان چون آپدیت های دیگری هم توی صفحه هست همه مقادیر آپدیت میشن ولی اگه بقیه رو کامنت کنیم فقط آیدی مورد نظر آپدیت میشه*/
  }
}
