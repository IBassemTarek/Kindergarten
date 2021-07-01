import 'package:flutter/widgets.dart';

class Visible extends ChangeNotifier {
    bool visable = false;
    toggleVisibility (){
        visable =! visable;
        notifyListeners();
    }  
}