

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class WaterSectionPreparingServices {
  final CollectionReference  waterSection  = FirebaseFirestore.instance.collection('waterSectionPreparing');


  List<WaterSectionPreparingModel> _waterSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return WaterSectionPreparingModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),source: doc.get('source'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<WaterSectionPreparingModel>> get waterSectionData {
    return waterSection.snapshots().map(_waterSectionSnapShot);
  }
  }