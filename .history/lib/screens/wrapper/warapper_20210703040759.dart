import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:kindergarten/models/modalprogrsshub.dart'; 
import 'package:kindergarten/screens/AuthUI/sign_in.dart';
import 'package:kindergarten/screens/Home/home_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
          if (snapshot.connectionState == ConnectionState.active) {
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
        child: SignIn());
            } 
            return  MyHomePage( );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}