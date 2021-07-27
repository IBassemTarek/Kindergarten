



import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class KidsClothesSectionPreparingServices {
  final CollectionReference  kidsClothesSection  = FirebaseFirestore.instance.collection('kidsClothesPreparing');


  List<KidsClothesSectionPreparingModel> _kidsClothesSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return KidsClothesSectionPreparingModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<KidsClothesSectionPreparingModel>> get kidsClothesSectionData {
    return kidsClothesSection.snapshots().map(_kidsClothesSectionSnapShot);
  }
  }