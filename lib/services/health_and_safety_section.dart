

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class HealthSectionServices {
  final CollectionReference  healthSection  = FirebaseFirestore.instance.collection('healthSection');


  List<HealthSectionModel> _healthSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return HealthSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<HealthSectionModel>> get healthSectionData {
    return healthSection.snapshots().map(_healthSectionSnapShot);
  }
  }