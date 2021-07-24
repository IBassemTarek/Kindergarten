

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class NationalSectionServices {
  final CollectionReference  nationalSection  = FirebaseFirestore.instance.collection('nationalSection');


  List<NationalSectionModel> _nationalSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return NationalSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<NationalSectionModel>> get nationalSectionData {
    return nationalSection.snapshots().map(_nationalSectionSnapShot);
  }
  }