

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class VisionServices {
  final CollectionReference  vision  = FirebaseFirestore.instance.collection('vision');


  List<VisionModel> _visionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return VisionModel(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<VisionModel>> get visionData {
    return vision.snapshots().map(_visionSnapShot);
  }
  }