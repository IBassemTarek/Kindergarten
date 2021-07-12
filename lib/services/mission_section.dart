

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class MissionServices {
  final CollectionReference  mission  = FirebaseFirestore.instance.collection('mission');


  List<MissionModel> _missionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return MissionModel(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<MissionModel>> get missionData {
    return mission.snapshots().map(_missionSnapShot);
  }
  }