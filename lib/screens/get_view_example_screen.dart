import 'package:flutter/material.dart';
import 'package:flutter_getx_toturial/contollers/get_view_example_controller.dart';
import 'package:get/get.dart';

import '../widgets/main_row_item.dart';

// class GetViewExampleScreen extends GetView<GetViewExampleController> {
class GetViewExampleScreen extends GetWidget<GetViewExampleController> {
  @override
  Widget build(BuildContext context) {
    //create a instance of controller
    // Get.put(GetViewExampleController()) ;
    Get.create(() => GetViewExampleController())  ;
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainRowItem(
                title: '++',
                onTap: () {

                  /*
                  اگر از Get.Put استفاده کنیم:
                  * مادامی که توی همین صفحه باشیم هش کد یکسان هس یعنی یک اینستنس رو میده بمون هر دفعه
                  * وقتی بک رو بزنیم و برگردیم فرق میکنه

                  Get.create :
                  هر بار یک اینتنس جدید از کنترلر بمون میده
                  و هش کد عوض میشه و عدد هم بالا نمیره و همیشه روی دیفالت ولیو میمونه

                  حالا در صورتی که مایل باشیم این get.Create هر بار اینستنس یکسانی رو به ما بده
                  به جای GetView از GetWidget استفاده میکنیم

                  ترکیب های زیر در عمل دقیقا مثل هم عمل میکنن:
                  GetView & Get.put == GetWidget & Get.create

                  * */
                  print('The hash code of instance : ${controller.hashCode}') ;

                  controller.increment() ;
                }),
            Obx(() =>Text('The Controller value is ${controller.count}') ) ,
          ],
        ),
      ),
    );
  }

}