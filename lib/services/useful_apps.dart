import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class UsefulAppsServices {
  final CollectionReference  usefulApps  = FirebaseFirestore.instance.collection('usefulApps');


  List<UsefulAppsModel> _usefulAppsSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return UsefulAppsModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<UsefulAppsModel>> get usefulAppsData {
    return usefulApps.snapshots().map(_usefulAppsSnapShot);
  }
  }