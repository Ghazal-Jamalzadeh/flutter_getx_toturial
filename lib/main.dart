
import 'package:flutter/material.dart';
import 'package:flutter_getx_toturial/contollers/my_app_controller_binding.dart';
import 'package:flutter_getx_toturial/contollers/my_service.dart';
import 'package:get/get.dart';

import 'screens/main_screen.dart';

Future<void> main() async {
  //services
  await initServices() ;
  //route binding
  MyAppControllerBinding().dependencies() ;
  runApp(const MyApp());
}

Future<void> initServices() async{
  print('starting services...')  ;
  await Get.putAsync<MyService>(() async => await MyService());
  print('all services stated...')  ;
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GetX Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: MainScreen(),
    );
  }
}

