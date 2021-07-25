import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class DwellingSectionServices {
  final CollectionReference dwellingSection = FirebaseFirestore.instance.collection('dwellingSection');


  List<DwellingSection> _dwellingSectionListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return DwellingSection(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<DwellingSection>> get dwellingSectionData {
    return dwellingSection.snapshots().map(_dwellingSectionListSnapShot);
  }
  }