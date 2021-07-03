import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/modalprogrsshub.dart';
import 'package:kindergarten/models/user_model.dart'; 
import 'package:kindergarten/screens/Home/home_page.dart';
import 'package:kindergarten/screens/shared/dashed_botton.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:kindergarten/screens/wrapper/warapper.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:kindergarten/services/users.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';


//local
import '../AuthUI/text_field_lables.dart'; 
import 'data_entry.dart';
import 'header.dart';
import 'or_line.dart';
import 'other_auth_method.dart';
import 'sign_method_change.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = new GlobalKey<FormState>();
  final _auth = AuthService();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<TextFieldLables> loginTextFieldLables = [
     TextFieldLables(
       lable:  "Name",
       hint: "Enter your name",
     ),
     TextFieldLables(
       lable:  "Email",
       hint: "Example@gmail.com",
     ),
     TextFieldLables(
       lable: "Password",
       hint:  "Enter your password",
     ),
  ];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return  Scaffold(
        key: _scaffoldKey,
      body: ModalProgressHUD(
          inAsyncCall: Provider.of<ModelHub>(context).isLoading,
          child: Builder(builder: (context) {
          return SafeArea(
            child: Stack(
              children: [
              Align(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/signin/Vector-mid.png',width: 0.4213*_width )
              ),
              Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset('assets/images/signin/Vector-bot.png',height:0.140625*_height)
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0507*_width,vertical: _height*0.03911),
                child: Wrap(
                  runSpacing: 0.022*_height,
                  runAlignment: WrapAlignment.spaceBetween, 
                      children: [ 
                Header(
                  title: 'Create Account',
                  subtitle: "Fill your identity or continue with social media",
                ),
                DataEntry(loginTextFieldLables: loginTextFieldLables ),
                SizedBox(
                  height: _height*0.0246,
                ),
          Builder(
              builder: (context) => DashedButton(
              ontap:  () async { 
                      _validate(context);
                    },
              title: 'SignUp',
            ),
          ),
              Center(child: OrLine()),
                SizedBox(
                  height: _height*0.0246,
                ),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 0.157005*_width,
                  direction: Axis.horizontal,
                children: [
          OtherAuthMethod(
            imageURL: "assets/images/signin/fb.svg",
                                  ontap: () async {
                                    try {
                                      User user =
                                          await _auth.signInUsingFaceBook();
                                      print(user.uid);
                                      Navigator.pushReplacement(
                                        context,
                                        OnBoardingPageRoute(
                                            duration: 1000,
                                            widget: Wrapper(),
                                            myAnimation: Curves.elasticInOut),
                                      );
                                    } on FirebaseAuthException catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(e.message.toString()),
                                      ));
                                    }
                                  },
           ),
          OtherAuthMethod(
            imageURL: "assets/images/signin/google.svg",
            ontap: ()async{
                                    try {
                                      User user =
                                          await _auth.signInUsingGoogle();
                                      print(user.uid);
                                      Navigator.pushReplacement(
                                        context,
                                        OnBoardingPageRoute(
                                            duration: 1000,
                                            widget: Wrapper(),
                                            myAnimation: Curves.elasticInOut),
                                      );
                                    } on FirebaseAuthException catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(e.message.toString()),
                                      ));
                                    }
            },
           ),
                ],
                ),
              ),
              
          Center(
            child: SignMethodChange(
              currentWidget: "Sign Up",
            ),
          )
                      ],
                ),
              )
              ],
            ),
          );
        }
      ),)
    );
  }
  void _validate(BuildContext context2) async {
    final modelhud = Provider.of<ModelHub>(context2, listen: false);
    final _authData = Provider.of<AuthData>(context2, listen: false);

    modelhud.changeIsLoading(true);
    if (_globalKey.currentState!.validate()) {
      _globalKey.currentState!.save();
      try {
        dynamic userData =
            await _auth.signUp(_authData.email, _authData.password);
        if (userData != null) {
          UserModel user = _auth.userFromFirebaseUser(userData);
          print(user.id);
          modelhud.changeIsLoading(false);
          ProfileDataBaseServices().addUser(name: _authData.name.toString(), uid: user.id, context: context2);
          Navigator.pushReplacement(
            context2,
            OnBoardingPageRoute(
                duration: 1000,
                widget: Wrapper(),
                myAnimation: Curves.elasticInOut),
          );
        }
      } on FirebaseAuthException catch (e) {
        modelhud.changeIsLoading(false);
        ScaffoldMessenger.of(context2).showSnackBar(SnackBar(
          content: Text(e.message.toString()),
        ));
      }
    }
    modelhud.changeIsLoading(false);
  }
 


}

