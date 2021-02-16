import 'package:flutter/material.dart';



class ElementProvider extends ChangeNotifier{

  
  String element="Restaurant";
String get elements=>element;
  void verification(String id){
  element=id;
 notifyListeners();

  }
}