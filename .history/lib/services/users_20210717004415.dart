import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserData {
  final String name;
  UserData({required this.name});
}

class ProfileDataBaseServices {
  final CollectionReference usersData = FirebaseFirestore.instance.collection('UsersData');
 void addUser({required String name,required String uid,required BuildContext context}) async {  
     
      final DocumentReference documentReference = usersData.doc(uid);
      await documentReference.set({
     "name": name,  
      });
  
  }
String getFirstWord(String inputString) {
    List<String> wordList = inputString.split(" ");
    if (wordList.isNotEmpty) {
      return wordList[0];
    } else {
      return ' ';
    }
  }


  Stream<UserData> childData ({required String uid} ) {
    return usersData.doc(uid).snapshots().map(_childDataFromSnapshot);
  }
UserData _childDataFromSnapshot(DocumentSnapshot snapshot) {
            return UserData( 
        name:getFirstWord(snapshot.get("name"),) 
    );
} 
  }