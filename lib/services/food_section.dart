
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class FoodSectionServices {
  final CollectionReference  foodSection  = FirebaseFirestore.instance.collection('foodSection');



  List<FoodSectionModel> _foodSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FoodSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FoodSectionModel>> get foodSectionData {
    return foodSection.snapshots().map(_foodSectionSnapShot);
  }
  }