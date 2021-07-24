

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class WaterSectionServices {
  final CollectionReference  waterSection  = FirebaseFirestore.instance.collection('waterSection');


  List<WaterSectionModel> _waterSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return WaterSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<WaterSectionModel>> get waterSectionData {
    return waterSection.snapshots().map(_waterSectionSnapShot);
  }
  }