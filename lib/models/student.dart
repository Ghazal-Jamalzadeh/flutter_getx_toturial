import 'package:get/get.dart';

class Student{

  var name = RxString('ali');
  var age = 25.obs() ;

}

class Student2{
  var name ;
  var age ;
  Student2({this.name , this.age});
}