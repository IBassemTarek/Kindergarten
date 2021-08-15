import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class PreparingClassesServices {
  final CollectionReference  preparingClasses  = FirebaseFirestore.instance.collection('Preparing classes');


  List<PreparingClassesModel> _preparingClassesSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return PreparingClassesModel(
        source: doc.get('source'),
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<PreparingClassesModel>> get preparingClassesData {
    return preparingClasses.snapshots().map(_preparingClassesSnapShot);
  }
  }