import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/main_row_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainRowItem(
              title: 'Back to main',
              onTap: () {
                // Get.back() ;
                Get.back(result: "This is from home screen ") ;
              }),
          const SizedBox(height: 16,) ,
          Text('${Get.arguments}' , style: const TextStyle(fontSize: 12),) ,
        ],
      ),),
    );
  }
}
