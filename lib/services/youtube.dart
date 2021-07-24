import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class YoutubeServices {
  final CollectionReference  youtube  = FirebaseFirestore.instance.collection('playOutSide_Youtube');


  List<YoutubeModel> _youtubeSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return YoutubeModel(
        titleA: doc.get('titleA'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<YoutubeModel>> get youtubeData {
    return youtube.snapshots().map(_youtubeSnapShot);
  }
  }