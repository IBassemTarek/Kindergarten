import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kindergarten/models/user_model.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel userFromFirebaseUser(user) {
    return user != null ? UserModel(id: user.uid) : UserModel(id:"");
  }


  Stream<UserModel> get user {
    return _auth.authStateChanges().map(userFromFirebaseUser);
  }



  Future signInUsingGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn(); 
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    var authResult = await _auth.signInWithCredential(credential);
    return authResult.user;
  }

  Future signInUsingFaceBook() async {
    final fb = FacebookLogin();
    final res = await fb.logIn(
      permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email
      ]
    );

    switch(res.status){
      case FacebookLoginStatus.success:
        print('worked');
        final FacebookAccessToken ? fbTocken = res.accessToken;
        final AuthCredential credential 
        = FacebookAuthProvider.credential(fbTocken!.token);
        final result = await _auth.signInWithCredential(credential);
        return result.user;
      case FacebookLoginStatus.cancel:
        print('canceled');
        break;
      case FacebookLoginStatus.error:
        print('error');
        break;
    } 
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }  

  Future signIn(emailSignIn, passwordSignIn) async {
      var authResult = await _auth.signInWithEmailAndPassword(
          email: emailSignIn, password: passwordSignIn);
      return authResult.user;
  }

  Future signUp({emailSignIn, passwordSignIn}) async {
      var authResult = await _auth.createUserWithEmailAndPassword(
          email: emailSignIn, password: passwordSignIn); 
      return authResult.user;
  } 
}