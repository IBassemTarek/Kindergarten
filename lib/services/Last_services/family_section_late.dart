

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/last_pdf_models.dart'; 

class FamilySectionLateServices {
  final CollectionReference  familySection  = FirebaseFirestore.instance.collection('chantsLast');


  List<FamilySectionLastModel> _familySectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FamilySectionLastModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FamilySectionLastModel>> get familySectionsData {
    return familySection.snapshots().map(_familySectionSnapShot);
  }
  }