

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class SandSectionPreparingServices {
  final CollectionReference  sandSection  = FirebaseFirestore.instance.collection('sandSectionPreparing');


  List<SandSectionPreparing> _sandSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return SandSectionPreparing(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),source: doc.get('source'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<SandSectionPreparing>> get sandSectionData {
    return sandSection.snapshots().map(_sandSectionSnapShot);
  }
  }