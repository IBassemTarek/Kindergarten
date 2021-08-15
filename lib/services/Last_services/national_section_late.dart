

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:kindergarten/models/last_pdf_models.dart'; 

// class NationalSectionLateServices {
//   final CollectionReference  nationalSection  = FirebaseFirestore.instance.collection('nationalSectionLast');


//   List<NationalSectionLastModel> _nationalSectionSnapShot(QuerySnapshot snapshot) {
//     return snapshot.docs.map((doc) {
//       return NationalSectionLastModel(
//         titleA: doc.get('titleA'),
//         imageURL: doc.get('imageURL'),
//         title: doc.get('title'),source: doc.get('source'),
//         url:  doc.get('url'),
//         ); 
//     }).toList();
//   }

//   // define a stream of data that give response when user login or logout
//   Stream<List<NationalSectionLastModel>> get nationalSectionData {
//     return nationalSection.snapshots().map(_nationalSectionSnapShot);
//   }
//   }