import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/modalprogrsshub.dart';
import 'package:kindergarten/models/user_model.dart';
import 'package:kindergarten/screens/Home/home_page.dart';
import 'package:kindergarten/screens/shared/dashed_botton.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';


//local
import '../AuthUI/text_field_lables.dart'; 
import 'data_entry.dart';
import 'header.dart';
import 'or_line.dart';
import 'other_auth_method.dart';
import 'sign_method_change.dart';

class SignIn extends StatelessWidget {
final GlobalKey<FormState> _globalKey = new GlobalKey<FormState>(); 
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _auth = AuthService(); 
  static List<TextFieldLables> loginTextFieldLables = [
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
        child:  Builder(builder: (context) {
          return Form(
            key:_globalKey,
            child: SafeArea(
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
                  padding: EdgeInsets.symmetric(horizontal: 0.0507*_width,vertical: _height*0.04911),
                  child: Wrap(
                    runSpacing: 0.029*_height,
                    runAlignment: WrapAlignment.spaceBetween, 
                        children: [ 
                  Header(title: "Welcome back",subtitle: "Fill your Email and Password or continue with social media",),
                  DataEntry(loginTextFieldLables: loginTextFieldLables ),
                  Container(
                      alignment: Alignment.bottomRight,
                      height: 0.030134*_height,
                      child: Text('Forget password ?',textAlign: TextAlign.right,style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14),)),
            DashedButton(
              ontap:  () async { 
                  _validate(context);
                    },
              title: 'login',
            ),
                Center(child: OrLine()),
                Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 0.157005*_width,
                    direction: Axis.horizontal,
                  children: [
            OtherAuthMethod(
              imageURL: "assets/images/signin/fb.svg",
              ontap: ()async {
                  final _authData = Provider.of<AuthData>(context,listen: false);
                  print(_authData.email);
                  print(_authData.password);
                  await IsFirstRun.reset();
              },
             ),
            OtherAuthMethod(
              imageURL: "assets/images/signin/google.svg",
              ontap: (){},
             ),
                  ],
                  ),
                ),
            Center(
              child: SignMethodChange(
                currentWidget: "Sign In",
              ),
            )
                        ],
                  ),
                )
                ],
              ),
            ),
          );
        }
      ),)
    );
  }

  void _validate(BuildContext context) async { 
    final modelhud = Provider.of<ModelHub>(context,listen:false);
    final _authData = Provider.of<AuthData>(context,listen:false);
      
    modelhud.changeIsLoading(true);
    if (  _globalKey.currentState!.validate()) {
      _globalKey.currentState!.save(); 
        try { 
          dynamic userData = await _auth.signIn(_authData.email, _authData.password);
          if (userData != null) {
            modelhud.changeIsLoading(false);
            UserModel user = _auth.userFromFirebaseUser(userData);
            print(user.id);   
          Navigator.pushReplacement(
            context,
            OnBoardingPageRoute(
                duration: 1000,
                widget: MyHomePage(),
                myAnimation: Curves.elasticInOut),
          );
          }
        } on FirebaseAuthException catch (e)  {
          modelhud.changeIsLoading(false);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(e.message.toString()),
          ));
        }
      
    }
    modelhud.changeIsLoading(false);
  }
  
}
