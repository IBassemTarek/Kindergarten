import 'package:flutter/widgets.dart';

class AuthData extends ChangeNotifier {
    String ? email;
    String ? password;
    String ? name;
        setEmail ({required String emailIn}){
        email = emailIn;
        notifyListeners();
    }
        setPassword ({required String passwordIn}){
        password = passwordIn;
        notifyListeners();
    }

        setName ({required String nameIn}){
        name = nameIn;
        notifyListeners();
    }   
}  