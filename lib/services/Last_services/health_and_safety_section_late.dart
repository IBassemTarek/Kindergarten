

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/last_pdf_models.dart'; 

class HealthSectionLateServices {
  final CollectionReference  healthSection  = FirebaseFirestore.instance.collection('healthSectionLast');


  List<HealthSectionLastModel> _healthSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return HealthSectionLastModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<HealthSectionLastModel>> get healthSectionData {
    return healthSection.snapshots().map(_healthSectionSnapShot);
  }
  }