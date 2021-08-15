



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:kindergarten/models/last_pdf_models.dart'; 

// class KidsClothesSectionLateServices {
//   final CollectionReference  kidsClothesSection  = FirebaseFirestore.instance.collection('kidsClothesLast');


//   List<KidsClothesSectionLastModel> _kidsClothesSectionSnapShot(QuerySnapshot snapshot) {
//     return snapshot.docs.map((doc) {
//       return KidsClothesSectionLastModel(
//         titleA: doc.get('titleA'),source: doc.get('source'),
//         imageURL: doc.get('imageURL'),
//         title: doc.get('title'),
//         url:  doc.get('url'),
//         ); 
//     }).toList();
//   }

//   // define a stream of data that give response when user login or logout
//   Stream<List<KidsClothesSectionLastModel>> get kidsClothesSectionData {
//     return kidsClothesSection.snapshots().map(_kidsClothesSectionSnapShot);
//   }
//   }