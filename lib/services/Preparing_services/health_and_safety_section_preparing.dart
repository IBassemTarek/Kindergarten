

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class HealthSectionPreparingServices {
  final CollectionReference  healthSection  = FirebaseFirestore.instance.collection('healthSection');


  List<HealthSectionPreparingModel> _healthSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return HealthSectionPreparingModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<HealthSectionPreparingModel>> get healthSectionData {
    return healthSection.snapshots().map(_healthSectionSnapShot);
  }
  }