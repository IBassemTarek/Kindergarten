

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class SandSectionServices {
  final CollectionReference  sandSection  = FirebaseFirestore.instance.collection('sandSection');


  List<SandSection> _sandSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return SandSection(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),source: doc.get('source'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<SandSection>> get sandSectionData {
    return sandSection.snapshots().map(_sandSectionSnapShot);
  }
  }