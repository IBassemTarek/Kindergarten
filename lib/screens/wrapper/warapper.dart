import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten/services/users.dart';
import '../../models/AuthData/auth_data.dart';
import '../../models/AuthVisible/auth_visible.dart';
import '../../models/drawer_scalling.dart';
import '../../models/modalprogrsshub.dart'; 
import '../../screens/AuthUI/sign_in.dart';
import '../../screens/Home/home_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            color: Colors.white,
            height: 20,
            width: 20,
            child: Center(child: CircularProgressIndicator()));
        }
          else if (snapshot.connectionState == ConnectionState.active) {
            User? user = snapshot.data;
            if (user == null) {
              return MultiProvider(
      providers: [
              ChangeNotifierProvider<Visible>(
          create: (context) => Visible(),
        ),
              ChangeNotifierProvider<AuthData>(
          create: (context) => AuthData(),
        ),
              ChangeNotifierProvider<ModelHub>(
          create: (context) => ModelHub(),
        )
        ],
        child:  SignIn());
            } else
            return  MultiProvider(
      providers: [ 
StreamProvider<UserData>.value(
      value: ProfileDataBaseServices().childData(uid: user.uid),
       initialData: UserData(name: 'Name'),
       ),

              ChangeNotifierProvider<DrawerScalling>(
          create: (context) => DrawerScalling(),
        )
        ],
              child: MyHomePage( ));
          } else {
            return Scaffold(
              body: Container(
            height: 20,
            color: Colors.white,
            width: 20,
                child: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        });
  }
}