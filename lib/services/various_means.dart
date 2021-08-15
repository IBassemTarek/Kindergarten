import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class VariousMeansServices {
  final CollectionReference  variousMeans  = FirebaseFirestore.instance.collection('Various means');


  List<VariousMeansModel> _variousMeansSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return VariousMeansModel(
        source: doc.get('source'),
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<VariousMeansModel>> get variousMeansData {
    return variousMeans.snapshots().map(_variousMeansSnapShot);
  }
  }