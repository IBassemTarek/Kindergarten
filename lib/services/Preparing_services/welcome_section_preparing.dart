import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/preparing_pdf_models.dart'; 

class WelcomeSectionPreparingServices {
  final CollectionReference  welcomeSection  = FirebaseFirestore.instance.collection('welcomeSectionPreparing');


  List<WelcomeSectionPreparingModel> _welcomeSectionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return WelcomeSectionPreparingModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),source: doc.get('source'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<WelcomeSectionPreparingModel>> get welcomeSectionData {
    return welcomeSection.snapshots().map(_welcomeSectionSnapShot);
  }
  }