import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainRowItem extends StatelessWidget {
  String title ;
  Color color ;
  Function onTap ;
  MainRowItem({Key? key , required this.title , required this.color, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        backgroundColor: Colors.limeAccent,
        onPressed: onTap(),
        label: Text(title));
  }
}
