

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class FamilySectionServices {
  final CollectionReference  familySection  = FirebaseFirestore.instance.collection('FamilySection');


  List<FamilySectionModel> _familySectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FamilySectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FamilySectionModel>> get familySectionsData {
    return familySection.snapshots().map(_familySectionSnapShot);
  }
  }