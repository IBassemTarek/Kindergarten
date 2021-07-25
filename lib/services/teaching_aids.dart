import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class TeachingAidsServices {
  final CollectionReference teachingAids = FirebaseFirestore.instance.collection('teachingAids');


  List<TechingAids> _teachingAidsListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return TechingAids(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        url:  doc.get('url'),
        title: doc.get('title'),source: doc.get('source'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<TechingAids>> get teachingAidsData {
    return teachingAids.snapshots().map(_teachingAidsListSnapShot);
  }
  }