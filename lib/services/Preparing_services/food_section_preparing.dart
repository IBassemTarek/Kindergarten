
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class FoodSectionPreparingServices {
  final CollectionReference  foodSection  = FirebaseFirestore.instance.collection('foodSectionPreparing');



  List<FoodSectionPreparingModel> _foodSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FoodSectionPreparingModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FoodSectionPreparingModel>> get foodSectionData {
    return foodSection.snapshots().map(_foodSectionSnapShot);
  }
  }