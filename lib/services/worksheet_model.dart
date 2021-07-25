import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class WorksheetServices {
  final CollectionReference  worksheets  = FirebaseFirestore.instance.collection('Worksheets');


  List<WorksheetsModel> _worksheetsListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return WorksheetsModel(
        titleA: doc.get('titleA'),
        url:  doc.get('url'),
        imageURL:  doc.get('imageURL'),
        source: doc.get('source'),
        title: doc.get('title'),

        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<WorksheetsModel>> get worksheetsData {
    return worksheets.snapshots().map(_worksheetsListSnapShot);
  }
  }