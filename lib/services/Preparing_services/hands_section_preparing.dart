

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class HandsSectionPreparingServices {
  final CollectionReference  handsSection  = FirebaseFirestore.instance.collection('HandsSectionPreparing');


  List<HandsSectionPreparingModel> _handsSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return HandsSectionPreparingModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<HandsSectionPreparingModel>> get handsSectionData {
    return handsSection.snapshots().map(_handsSectionSnapShot);
  }
  }