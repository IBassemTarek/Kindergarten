import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class DwellingSectionPreparingServices {
  final CollectionReference dwellingSection = FirebaseFirestore.instance.collection('dwellingSectionPreparing');


  List<DwellingSectionPreparing> _dwellingSectionListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return DwellingSectionPreparing(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<DwellingSectionPreparing>> get dwellingSectionData {
    return dwellingSection.snapshots().map(_dwellingSectionListSnapShot);
  }
  }