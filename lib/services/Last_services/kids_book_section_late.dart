

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/last_pdf_models.dart'; 

class KidsBooksSectionLateServices {
  final CollectionReference  kidsBooksSection  = FirebaseFirestore.instance.collection('kidsBooksLast');


  List<KidsBooksSectionLastModel> _kidsBooksSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return KidsBooksSectionLastModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<KidsBooksSectionLastModel>> get kidsBooksSectionData {
    return kidsBooksSection.snapshots().map(_kidsBooksSectionSnapShot);
  }
  }