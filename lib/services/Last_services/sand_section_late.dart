

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:kindergarten/models/last_pdf_models.dart'; 

// class SandSectionLateServices {
//   final CollectionReference  sandSection  = FirebaseFirestore.instance.collection('sandSectionLast');


//   List<SandSectionLast> _sandSectionSnapShot(QuerySnapshot snapshot) {
//     return snapshot.docs.map((doc) {
//       return SandSectionLast(
//         titleA: doc.get('titleA'),
//         imageURL: doc.get('imageURL'),
//         title: doc.get('title'),source: doc.get('source'),
//         url:  doc.get('url'),
//         ); 
//     }).toList();
//   }

//   // define a stream of data that give response when user login or logout
//   Stream<List<SandSectionLast>> get sandSectionData {
//     return sandSection.snapshots().map(_sandSectionSnapShot);
//   }
//   }