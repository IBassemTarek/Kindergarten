

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class NationalSectionPreparingServices {
  final CollectionReference  nationalSection  = FirebaseFirestore.instance.collection('nationalSectionPreparing');


  List<NationalSectionPreparingModel> _nationalSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return NationalSectionPreparingModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),source: doc.get('source'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<NationalSectionPreparingModel>> get nationalSectionData {
    return nationalSection.snapshots().map(_nationalSectionSnapShot);
  }
  }