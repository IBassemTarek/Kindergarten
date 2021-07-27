

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class FamilySectionPreparingServices {
  final CollectionReference  familySection  = FirebaseFirestore.instance.collection('FamilySectionPreparing');


  List<FamilySectionPreparingModel> _familySectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FamilySectionPreparingModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FamilySectionPreparingModel>> get familySectionsData {
    return familySection.snapshots().map(_familySectionSnapShot);
  }
  }