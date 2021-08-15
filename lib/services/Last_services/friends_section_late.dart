import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/last_pdf_models.dart'; 

class FriendsSectionLateServices {
  final CollectionReference  friendsSection  = FirebaseFirestore.instance.collection('fingerGamesLast');


  List<FriendsSectionLastModel> _friendsSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FriendsSectionLastModel(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FriendsSectionLastModel>> get friendsSectionnData {
    return friendsSection.snapshots().map(_friendsSectionSnapShot);
  }
  }