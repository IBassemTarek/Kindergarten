

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class AudibleFeaturesServices {
  final CollectionReference  audibleFeatures  = FirebaseFirestore.instance.collection('audibleFeatures');


  List<AudibleFeaturesModel> _audibleFeaturesSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return AudibleFeaturesModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<AudibleFeaturesModel>> get audibleFeaturesData {
    return audibleFeatures.snapshots().map(_audibleFeaturesSnapShot);
  }
  }