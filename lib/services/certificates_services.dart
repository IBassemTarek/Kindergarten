

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/certificate_model.dart';  

class CertificateServices {
  final CollectionReference  certificate  = FirebaseFirestore.instance.collection('certificates');


  List<CertificateModel> _certificateSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return CertificateModel(
        pdf: doc.get('pdf'),
        source: doc.get('source'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<CertificateModel>> get certificateData {
    return certificate.snapshots().map(_certificateSnapShot);
  }
  }