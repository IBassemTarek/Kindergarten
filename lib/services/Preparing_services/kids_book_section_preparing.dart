

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class KidsBooksSectionPreparingServices {
  final CollectionReference  kidsBooksSection  = FirebaseFirestore.instance.collection('kidsBooksPreparing');


  List<KidsBooksSectionPreparingModel> _kidsBooksSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return KidsBooksSectionPreparingModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<KidsBooksSectionPreparingModel>> get kidsBooksSectionData {
    return kidsBooksSection.snapshots().map(_kidsBooksSectionSnapShot);
  }
  }