

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class QuranServices {
  final CollectionReference  quran  = FirebaseFirestore.instance.collection('Quran');


  List<QuranModel> _quranSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return QuranModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<QuranModel>> get quranData {
    return quran.snapshots().map(_quranSnapShot);
  }
  }