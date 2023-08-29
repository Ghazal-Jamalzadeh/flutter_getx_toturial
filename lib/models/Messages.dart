import 'package:get/get.dart';

class Messages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'en' : {
      'hello' : 'Hello'
    }
    ,
    'fa' : {
      'hello' : 'سلام'
    }
    ,  'fr' : {
      'hello' : 'Bonjour'
    }
    ,

  };
}