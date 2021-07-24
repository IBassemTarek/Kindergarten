import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class SoonProvidedServices {
  final CollectionReference soonProvided = FirebaseFirestore.instance.collection('soonProvided');


  List<SoonProvided> _soonProvidedListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return SoonProvided(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'), 
        title: doc.get('title'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<SoonProvided>> get soonProvidedData {
    return soonProvided.snapshots().map(_soonProvidedListSnapShot);
  }
  }