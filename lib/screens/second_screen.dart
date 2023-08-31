import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_toturial/contollers/home_contrroller.dart';
import 'package:get/get.dart';

import '../widgets/main_row_item.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainRowItem(
                title: 'Binding',
                onTap: () {
                  Get.find<HomeController>().incrementUsingBinding() ;
                }),
            Obx(() =>Text('The Home Controller value is ${Get.find<HomeController>().countHomeBinding.value}') ) ,
          ],
        ),
      ),
    );
  }
}
