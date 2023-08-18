import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainRowItem extends StatelessWidget {
  String title ;
  Function onTap ;
  MainRowItem({Key? key , required this.title , required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: (){
          onTap() ;
        },
        label: Text(title));
  }
}
