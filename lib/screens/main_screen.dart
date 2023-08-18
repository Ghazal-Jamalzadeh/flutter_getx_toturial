import 'package:flutter/material.dart';
import 'package:flutter_getx_toturial/widgets/main_row_item.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* Toast */
                    MainRowItem(title: 'Show Toast', color: Colors.red, onTap:(){

                    } )
                  ],
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
