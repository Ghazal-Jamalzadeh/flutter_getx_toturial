import 'dart:ui';

import 'package:flutter_getx_toturial/models/student.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  // @override
  // void onInit() {
  //   print('init called ');
  //   incrementNumberEvery5Seconds();
  //   super.onInit();
  // }
  //
  // @override
  // void onClose() {
  //   print('close called');
  //   cleanUpTask();
  //   super.onClose();
  // }

  // Unique id
  int id = 1000;

  void incrementId() {
    id++;
    update(["myUniqueId"]);
    /*نکته : الان چون آپدیت های دیگری هم توی صفحه هست همه مقادیر آپدیت میشن ولی اگه بقیه رو کامنت کنیم فقط آیدی مورد نظر آپدیت میشه*/
  }

  //workers
  var workerValue = 50.obs;

  void incrementWorkerValue() {
    workerValue++;
  }

  /* بهترین جا برای استفاده از ورکرها داخل متدهای onInit خود کنترلر هست */
  @override
  void onInit() {
    //called every time when the value of count variable changes
    ever(workerValue, (callback) => print('ever : $workerValue'));

    //called every time when the value of any variable changes
    everAll([workerValue], (callback) => print('everAll : $workerValue'));

    //called only once when the variable value changes
    once(workerValue, (callback) => print('once : $workerValue'));

    //called every time the user stops typing for 3 second
    debounce(workerValue, (callback) => print('debounce : $workerValue'),
        time: const Duration(seconds: 3));

    //ignore all changes within 3 seconds
    //imagine that the user can earn coins by clicking on something
    //if he clicks 300 times in the same minute
    //he would have 300 coins
    //using interval, you can set a time frame for 3 seconds
    //and even then clicking 300 or a thousand times
    //the maximum he would get in 1 minute would be 20 coins
    //clicking 300 or 1 million times
    interval(workerValue, (callback) => print('interval : $workerValue'),
        time: const Duration(seconds: 3));
    super.onInit();
  }

  //Localization
  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1);
    Get.updateLocale(locale);
  }

//Dependency Injection
  void incrementCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('pressed counter $counter times ');
    await preferences.setInt('counter', counter);
  }

  //binding
  var countBinding = 200.obs;
  void incrementUsingBinding() {
    countBinding++;
  }


}
