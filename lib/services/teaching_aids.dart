import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class TeachingAidsServices {
  final CollectionReference teachingAids = FirebaseFirestore.instance.collection('teachingAids');


  List<TechingAids> _teachingAidsListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return TechingAids(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<TechingAids>> get teachingAidsData {
    return teachingAids.snapshots().map(_teachingAidsListSnapShot);
  }
  }