import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class FriendsSectionServices {
  final CollectionReference  friendsSection  = FirebaseFirestore.instance.collection('FriendsSection');


  List<FriendsSectionModel> _friendsSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return FriendsSectionModel(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<FriendsSectionModel>> get friendsSectionnData {
    return friendsSection.snapshots().map(_friendsSectionSnapShot);
  }
  }