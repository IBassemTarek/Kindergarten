import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class ProfileDataBaseServices {
  final CollectionReference usersData = FirebaseFirestore.instance.collection('UsersData');
 void addUser({required String name,required String uid,required BuildContext context}) async { 
    var a = await usersData.doc(uid).get(); 
    if (a.exists) 
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('user is already exist'),
        ));
else {
      final DocumentReference documentReference = usersData.doc(uid);
      return await documentReference.set({
     "name": name,  
      });
  }
 
  }
  }