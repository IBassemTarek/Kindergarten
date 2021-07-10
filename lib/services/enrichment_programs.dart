import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class EnrichmentProgramsServices {
  final CollectionReference enrichmentPrograms = FirebaseFirestore.instance.collection('enrichment program');


  List<EnrichmentPrograms> _enrichmentProgramsListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return EnrichmentPrograms(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<EnrichmentPrograms>> get enrichmentProgramsData {
    return enrichmentPrograms.snapshots().map(_enrichmentProgramsListSnapShot);
  }
  }