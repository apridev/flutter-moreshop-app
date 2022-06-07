import 'package:flutter/material.dart';

class HiddenPassword with ChangeNotifier{
 bool _isHiddenPassword = true;

 bool get isHiddenPassword => _isHiddenPassword;

 void hiddenPassword(){
   if(_isHiddenPassword == true){
     _isHiddenPassword = false;
   } else {
     _isHiddenPassword = true;
   }
   notifyListeners();
 }
  
}