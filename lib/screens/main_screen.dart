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
                    MainRowItem(
                        title: 'Show Toast',
                        onTap: () {
                          showGetXToast();
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    /* Dialog */
                    MainRowItem(
                        title: 'Show Dialog',
                        onTap: () {
                          showGetXDialog();
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    /* Bottom sheet */
                    MainRowItem(
                        title: 'Show Bottom Sheet',
                        onTap: () {
                          showGetXBottomSheet();
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showGetXToast() {
    Get.snackbar('Snack bar Title', 'Salam Sosis',
        snackPosition: SnackPosition.BOTTOM,
        // titleText: Text('New Title' , style: TextStyle(color: Colors.red),) ,
        // messageText: Text('Salam Kalbas' , style: TextStyle(color: Colors.blue),)
        colorText: Colors.black87,
        backgroundColor: Colors.red.withOpacity(0.3),
        borderRadius: 8,
        margin: const EdgeInsets.only(top: 56, left: 16, right: 16, bottom: 56),
        // maxWidth: 100 ,
        animationDuration: const Duration(seconds: 3),
        duration: const Duration(seconds: 10),
        backgroundGradient:
            const LinearGradient(colors: [Colors.red, Colors.blue]),
        borderWidth: 2,
        borderColor: Colors.black87,
        // boxShadows: [
        //   const BoxShadow(
        //       color: Colors.deepOrange,
        //       offset: Offset(8, 8),
        //       spreadRadius: 8,
        //       blurRadius: 100)
        // ],
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.bounceInOut,
        // reverseAnimationCurve: Curves.bounceInOut,
        icon: const Icon(Icons.ac_unit_outlined),
        shouldIconPulse: true,
        // leftBarIndicatorColor: Colors.green ,
        mainButton: TextButton(
          onPressed: () {
            print('Button clicked...');
          },
          child: const Text('Click me!'),
        ),
        onTap: (snack) {
          print('Snack bar clicked...');
        },
        overlayBlur: 5,
        // overlayColor: Colors.deepOrange ,
        // padding: EdgeInsets.all(32) ,
        showProgressIndicator: false,
        progressIndicatorBackgroundColor: Colors.black87,
        progressIndicatorValueColor: const AlwaysStoppedAnimation(Colors.white),
        // userInputForm: Form(child:
        // Row(
        //   children: [
        //     Expanded(child:
        //     TextField())
        //   ],
        // )
        // ),
        snackbarStatus: (val) {
          print(val);
        });
  }

  void showGetXDialog() {
    Get.defaultDialog(
      title: 'Dialog Title',
      titleStyle: const TextStyle(
        color: Colors.white,
      ),
      middleText: 'Dialog content',
      middleTextStyle: const TextStyle(color: Colors.lightGreen),
      backgroundColor: Colors.black,
      radius: 8,
      content: Column(
        children: const [
          CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 3,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Loading',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
      textCancel: 'cancel',
      cancelTextColor: Colors.white,
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onCancel: () async {
        Get.back();
        print('cancel clicked....');
      },
      onConfirm: () {
        print('ok clicked...');
      },
      //color for default cancel & confirm button
      buttonColor: Colors.red,

      //customize the cancel & confirm button (override on defaults)
      // cancel: const Text('Cancel' , style: TextStyle(color: Colors.limeAccent),) ,
      // confirm: const Text('OK' , style: TextStyle(color: Colors.limeAccent),) ,

      //  در ادامه دکمه های کنسل و کانفیرم قرار میگیرند برای آپشن های بیشتر
      // actions: [
      //   TextButton(onPressed: (){
      //     Get.back() ;
      //   } ,child: const Text('Close Dialog' , style: TextStyle(color: Colors.limeAccent),)) ,
      //   const Text('action 2' , style: TextStyle(color: Colors.limeAccent),) ,
      //   const Text('action 3' , style: TextStyle(color: Colors.limeAccent),) ,
      // ] ,
      // barrierDismissible: true ,
    );
  }

  void showGetXBottomSheet(){
    Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.all(32),
        child: Wrap(
          direction: Axis.vertical,
          children: [
            const SizedBox(
              height: 16,
            ),
            TextButton(onPressed: () {
              Get.changeTheme(ThemeData.light()) ;
            }, child: const Text('Light Theme')) ,
            const SizedBox(
              height: 16,
            ),
            TextButton(onPressed: () {
              Get.changeTheme(ThemeData.dark()) ;
            }, child: const Text('Dark Theme')) ,
          ],
        ),
      ),
      barrierColor: Colors.blueGrey.withOpacity(0.5) ,
      backgroundColor: Colors.white.withOpacity(0.9) ,
      isDismissible: true ,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16) , topRight: Radius.circular(16)) ,
        side: BorderSide(
          color: Colors.black ,
          style: BorderStyle.solid ,
          width: 2
        ) ,
      ) ,
      enableDrag: true ,


    );
  }
}
