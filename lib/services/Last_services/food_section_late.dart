
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/last_pdf_models.dart'; 

class FoodSectionLateServices {
  final CollectionReference  foodSection  = FirebaseFirestore.instance.collection('foodSectionLast');



  List<FoodSectionLastModel> _foodSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FoodSectionLastModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FoodSectionLastModel>> get foodSectionData {
    return foodSection.snapshots().map(_foodSectionSnapShot);
  }
  }