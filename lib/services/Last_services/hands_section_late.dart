

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/last_pdf_models.dart'; 

class HandsSectionLateServices {
  final CollectionReference  handsSection  = FirebaseFirestore.instance.collection('storiesLast');


  List<HandsSectionLastModel> _handsSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return HandsSectionLastModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<HandsSectionLastModel>> get handsSectionData {
    return handsSection.snapshots().map(_handsSectionSnapShot);
  }
  }