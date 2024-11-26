import 'package:flutter/material.dart';

class ControlerProvider extends ChangeNotifier{
  List prdact =['text','hosam','mohamed',"amer"];
  List prdact1 =[] ;
  void addToList(String itemBuilder){
    prdact1.add(itemBuilder);
    notifyListeners();
  }
}