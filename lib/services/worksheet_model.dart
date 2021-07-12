import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class WorksheetServices {
  final CollectionReference  worksheets  = FirebaseFirestore.instance.collection('Worksheets');


  List<WorksheetsModel> _worksheetsListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return WorksheetsModel(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<WorksheetsModel>> get worksheetsData {
    return worksheets.snapshots().map(_worksheetsListSnapShot);
  }
  }