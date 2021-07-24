

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class KidsBooksSectionServices {
  final CollectionReference  kidsBooksSection  = FirebaseFirestore.instance.collection('kidsBooks');


  List<KidsBooksSectionModel> _kidsBooksSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return KidsBooksSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<KidsBooksSectionModel>> get kidsBooksSectionData {
    return kidsBooksSection.snapshots().map(_kidsBooksSectionSnapShot);
  }
  }