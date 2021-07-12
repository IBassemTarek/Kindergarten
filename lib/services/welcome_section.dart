import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class WelcomeSectionServices {
  final CollectionReference  welcomeSection  = FirebaseFirestore.instance.collection('welcomeSection');


  List<WelcomeSectionModel> _welcomeSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return WelcomeSectionModel(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<WelcomeSectionModel>> get welcomeSectionData {
    return welcomeSection.snapshots().map(_welcomeSectionSnapShot);
  }
  }