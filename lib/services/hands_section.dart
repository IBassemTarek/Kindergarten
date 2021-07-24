

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class HandsSectionServices {
  final CollectionReference  handsSection  = FirebaseFirestore.instance.collection('HandsSection');


  List<HandsSectionModel> _handsSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return HandsSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<HandsSectionModel>> get handsSectionData {
    return handsSection.snapshots().map(_handsSectionSnapShot);
  }
  }