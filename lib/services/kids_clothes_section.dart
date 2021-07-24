



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class KidsClothesSectionServices {
  final CollectionReference  kidsClothesSection  = FirebaseFirestore.instance.collection('kidsClothes');


  List<KidsClothesSectionModel> _kidsClothesSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return KidsClothesSectionModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<KidsClothesSectionModel>> get kidsClothesSectionData {
    return kidsClothesSection.snapshots().map(_kidsClothesSectionSnapShot);
  }
  }