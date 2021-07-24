import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class LettersServices {
  final CollectionReference letters = FirebaseFirestore.instance.collection('letters');


  List<LetterModel> _letterListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return LetterModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<LetterModel>> get lettersData {
    return letters.snapshots().map(_letterListSnapShot);
  }
  }