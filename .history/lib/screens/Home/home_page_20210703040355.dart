
import 'package:flutter/material.dart';
import 'package:kindergarten/services/auth.dart';


class MyHomePage extends StatelessWidget { 
  BuildContext context;
  MyHomePage({required this.context});
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _auth = AuthService(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar( 
        title: Text("Welcome"),
      ),
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Welcome to Home page',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
            await _auth.signOut();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),  
    );
  }
} 
 